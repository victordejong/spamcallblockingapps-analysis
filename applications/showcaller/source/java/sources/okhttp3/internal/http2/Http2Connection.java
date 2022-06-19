package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.Protocol;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection.class */
public final class Http2Connection implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private static final ExecutorService listenerExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Http2Connection", true));
    private boolean awaitingPong;
    long bytesLeftInWriteWindow;
    final boolean client;
    final String hostname;
    int lastGoodStreamId;
    final Listener listener;
    int nextStreamId;
    final Settings peerSettings;
    private final ExecutorService pushExecutor;
    final PushObserver pushObserver;
    final ReaderRunnable readerRunnable;
    boolean shutdown;
    final Socket socket;
    final Http2Writer writer;
    private final ScheduledExecutorService writerExecutor;
    final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    long unacknowledgedBytesRead = 0;
    Settings okHttpSettings = new Settings();
    boolean receivedInitialPeerSettings = false;
    final Set<Integer> currentPushRequests = new LinkedHashSet();

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Builder.class */
    public static class Builder {
        boolean client;
        String hostname;
        int pingIntervalMillis;
        BufferedSink sink;
        Socket socket;
        BufferedSource source;
        Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        PushObserver pushObserver = PushObserver.CANCEL;

        public Builder(boolean z) {
            this.client = z;
        }

        public Http2Connection build() {
            return new Http2Connection(this);
        }

        public Builder listener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public Builder pingIntervalMillis(int i) {
            this.pingIntervalMillis = i;
            return this;
        }

        public Builder pushObserver(PushObserver pushObserver) {
            this.pushObserver = pushObserver;
            return this;
        }

        public Builder socket(Socket socket) {
            return socket(socket, ((InetSocketAddress) socket.getRemoteSocketAddress()).getHostName(), Okio.buffer(Okio.source(socket)), Okio.buffer(Okio.sink(socket)));
        }

        public Builder socket(Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink) {
            this.socket = socket;
            this.hostname = str;
            this.source = bufferedSource;
            this.sink = bufferedSink;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Listener.class */
    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection.Listener.1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream http2Stream) {
                http2Stream.close(ErrorCode.REFUSED_STREAM);
            }
        };

        public void onSettings(Http2Connection http2Connection) {
        }

        public abstract void onStream(Http2Stream http2Stream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$PingRunnable.class */
    public final class PingRunnable extends NamedRunnable {
        final int payload1;
        final int payload2;
        final boolean reply;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        PingRunnable(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", r8.hostname, Integer.valueOf(i), Integer.valueOf(i2));
            Http2Connection.this = r8;
            this.reply = z;
            this.payload1 = i;
            this.payload2 = i2;
        }

        @Override // okhttp3.internal.NamedRunnable
        public void execute() {
            Http2Connection.this.writePing(this.reply, this.payload1, this.payload2);
        }
    }

    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2Connection$ReaderRunnable.class */
    public class ReaderRunnable extends NamedRunnable implements Http2Reader.Handler {
        final Http2Reader reader;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ReaderRunnable(Http2Reader http2Reader) {
            super("OkHttp %s", r8.hostname);
            Http2Connection.this = r8;
            this.reader = http2Reader;
        }

        private void applyAndAckSettings(final Settings settings) {
            try {
                Http2Connection.this.writerExecutor.execute(new NamedRunnable("OkHttp %s ACK Settings", new Object[]{Http2Connection.this.hostname}) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.3
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        try {
                            Http2Connection.this.writer.applyAndAckSettings(settings);
                        } catch (IOException e) {
                            Http2Connection.this.failConnection();
                        }
                    }
                });
            } catch (RejectedExecutionException e) {
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z, int i, BufferedSource bufferedSource, int i2) {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushDataLater(i, bufferedSource, i2, z);
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream == null) {
                Http2Connection.this.writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                bufferedSource.skip(i2);
                return;
            }
            stream.receiveData(bufferedSource, i2);
            if (!z) {
                return;
            }
            stream.receiveFin();
        }

        @Override // okhttp3.internal.NamedRunnable
        protected void execute() {
            Object e;
            Throwable th;
            Object obj;
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            try {
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    while (this.reader.nextFrame(false, this)) {
                    }
                    errorCode = ErrorCode.NO_ERROR;
                    e = errorCode;
                } catch (IOException e2) {
                    e = e2;
                }
                try {
                    Http2Connection.this.close(errorCode, ErrorCode.CANCEL);
                } catch (IOException e3) {
                    obj = errorCode;
                    ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                    Http2Connection.this.close(errorCode3, errorCode3);
                    e = obj;
                    Util.closeQuietly(this.reader);
                }
            } catch (IOException e4) {
                obj = errorCode2;
            } catch (Throwable th3) {
                th = th3;
                e = errorCode2;
                try {
                    Http2Connection.this.close(e == 1 ? 1 : 0, errorCode2);
                } catch (IOException e5) {
                }
                Util.closeQuietly(this.reader);
                throw th;
            }
            Util.closeQuietly(this.reader);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i, ErrorCode errorCode, ByteString byteString) {
            Http2Stream[] http2StreamArr;
            byteString.size();
            synchronized (Http2Connection.this) {
                http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                Http2Connection.this.shutdown = true;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                if (http2Stream.getId() > i && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    Http2Connection.this.removeStream(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z, int i, int i2, List<Header> list) {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushHeadersLater(i, list, z);
                return;
            }
            synchronized (Http2Connection.this) {
                Http2Stream stream = Http2Connection.this.getStream(i);
                if (stream != null) {
                    stream.receiveHeaders(list);
                    if (!z) {
                        return;
                    }
                    stream.receiveFin();
                    return;
                }
                Http2Connection http2Connection = Http2Connection.this;
                if (http2Connection.shutdown) {
                    return;
                }
                if (i <= http2Connection.lastGoodStreamId) {
                    return;
                }
                if (i % 2 == http2Connection.nextStreamId % 2) {
                    return;
                }
                final Http2Stream http2Stream = new Http2Stream(i, Http2Connection.this, false, z, list);
                Http2Connection http2Connection2 = Http2Connection.this;
                http2Connection2.lastGoodStreamId = i;
                http2Connection2.streams.put(Integer.valueOf(i), http2Stream);
                Http2Connection.listenerExecutor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{Http2Connection.this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.1
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        try {
                            Http2Connection.this.listener.onStream(http2Stream);
                        } catch (IOException e) {
                            Platform platform = Platform.get();
                            platform.log(4, "Http2Connection.Listener failure for " + Http2Connection.this.hostname, e);
                            try {
                                http2Stream.close(ErrorCode.PROTOCOL_ERROR);
                            } catch (IOException e2) {
                            }
                        }
                    }
                });
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z, int i, int i2) {
            if (!z) {
                try {
                    Http2Connection.this.writerExecutor.execute(new PingRunnable(true, i, i2));
                    return;
                } catch (RejectedExecutionException e) {
                    return;
                }
            }
            synchronized (Http2Connection.this) {
                Http2Connection.this.awaitingPong = false;
                Http2Connection.this.notifyAll();
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i, int i2, int i3, boolean z) {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i, int i2, List<Header> list) {
            Http2Connection.this.pushRequestLater(i2, list);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i, ErrorCode errorCode) {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushResetLater(i, errorCode);
                return;
            }
            Http2Stream removeStream = Http2Connection.this.removeStream(i);
            if (removeStream == null) {
                return;
            }
            removeStream.receiveRstStream(errorCode);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(boolean z, Settings settings) {
            Http2Stream[] http2StreamArr;
            char c;
            int i;
            synchronized (Http2Connection.this) {
                int initialWindowSize = Http2Connection.this.peerSettings.getInitialWindowSize();
                if (z) {
                    Http2Connection.this.peerSettings.clear();
                }
                Http2Connection.this.peerSettings.merge(settings);
                applyAndAckSettings(settings);
                int initialWindowSize2 = Http2Connection.this.peerSettings.getInitialWindowSize();
                http2StreamArr = null;
                if (initialWindowSize2 == -1 || initialWindowSize2 == initialWindowSize) {
                    c = 0;
                } else {
                    ?? r0 = initialWindowSize2 - initialWindowSize;
                    Http2Connection http2Connection = Http2Connection.this;
                    if (!http2Connection.receivedInitialPeerSettings) {
                        http2Connection.addBytesToWriteWindow(r0);
                        Http2Connection.this.receivedInitialPeerSettings = true;
                    }
                    c = r0;
                    if (!Http2Connection.this.streams.isEmpty()) {
                        http2StreamArr = (Http2Stream[]) Http2Connection.this.streams.values().toArray(new Http2Stream[Http2Connection.this.streams.size()]);
                        c = r0;
                    }
                }
                Http2Connection.listenerExecutor.execute(new NamedRunnable("OkHttp %s settings", Http2Connection.this.hostname) { // from class: okhttp3.internal.http2.Http2Connection.ReaderRunnable.2
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        Http2Connection http2Connection2 = Http2Connection.this;
                        http2Connection2.listener.onSettings(http2Connection2);
                    }
                });
            }
            if (http2StreamArr == null || c == 0) {
                return;
            }
            for (Http2Stream http2Stream : http2StreamArr) {
                synchronized (http2Stream) {
                    http2Stream.addBytesToWriteWindow(c);
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (Http2Connection.this) {
                    Http2Connection http2Connection = Http2Connection.this;
                    http2Connection.bytesLeftInWriteWindow += j;
                    http2Connection.notifyAll();
                }
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream == null) {
                return;
            }
            synchronized (stream) {
                stream.addBytesToWriteWindow(j);
            }
        }
    }

    Http2Connection(Builder builder) {
        Settings settings = new Settings();
        this.peerSettings = settings;
        this.pushObserver = builder.pushObserver;
        boolean z = builder.client;
        this.client = z;
        this.listener = builder.listener;
        int i = z ? 1 : 2;
        this.nextStreamId = i;
        if (z) {
            this.nextStreamId = i + 2;
        }
        if (z) {
            this.okHttpSettings.set(7, OKHTTP_CLIENT_WINDOW_SIZE);
        }
        String str = builder.hostname;
        this.hostname = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(Util.format("OkHttp %s Writer", str), false));
        this.writerExecutor = scheduledThreadPoolExecutor;
        if (builder.pingIntervalMillis != 0) {
            PingRunnable pingRunnable = new PingRunnable(false, 0, 0);
            int i2 = builder.pingIntervalMillis;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(pingRunnable, i2, i2, TimeUnit.MILLISECONDS);
        }
        this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(Util.format("OkHttp %s Push Observer", str), true));
        settings.set(7, 65535);
        settings.set(5, 16384);
        this.bytesLeftInWriteWindow = settings.getInitialWindowSize();
        this.socket = builder.socket;
        this.writer = new Http2Writer(builder.sink, z);
        this.readerRunnable = new ReaderRunnable(new Http2Reader(builder.source, z));
    }

    public void failConnection() {
        try {
            ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
            close(errorCode, errorCode);
        } catch (IOException e) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0071 A[Catch: all -> 0x00d3, TryCatch #1 {, blocks: (B:5:0x000f, B:29:0x0088, B:30:0x0098, B:32:0x009f, B:34:0x00ac, B:40:0x00bc, B:41:0x00c8, B:42:0x00c9, B:7:0x0011, B:9:0x0019, B:11:0x0021, B:13:0x0027, B:15:0x004a, B:17:0x0053, B:22:0x0069, B:24:0x0071, B:26:0x0083, B:43:0x00cc, B:44:0x00d2), top: B:50:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private okhttp3.internal.http2.Http2Stream newStream(int r8, java.util.List<okhttp3.internal.http2.Header> r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.newStream(int, java.util.List, boolean):okhttp3.internal.http2.Http2Stream");
    }

    void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    void awaitPong() {
        synchronized (this) {
            while (this.awaitingPong) {
                wait();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:2|(3:53|3|4)|6|e|13|14|(8:16|(2:17|(6:19|51|20|21|56|26)(0))|27|28|47|33|35|(1:37)(2:38|39))(0)|49|27|28|47|33|35|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0097, code lost:
        if (r7 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009a, code lost:
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a6, code lost:
        r4 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void close(okhttp3.internal.http2.ErrorCode r4, okhttp3.internal.http2.ErrorCode r5) {
        /*
            r3 = this;
            r0 = 0
            r6 = r0
            r0 = r3
            r1 = r4
            r0.shutdown(r1)     // Catch: java.io.IOException -> Lc
            r0 = 0
            r4 = r0
            goto Ld
        Lc:
            r4 = move-exception
        Ld:
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r0.streams     // Catch: java.lang.Throwable -> Lc0
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lc0
            if (r0 != 0) goto L42
            r0 = r3
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r0.streams     // Catch: java.lang.Throwable -> Lc0
            java.util.Collection r0 = r0.values()     // Catch: java.lang.Throwable -> Lc0
            r1 = r3
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r1 = r1.streams     // Catch: java.lang.Throwable -> Lc0
            int r1 = r1.size()     // Catch: java.lang.Throwable -> Lc0
            okhttp3.internal.http2.Http2Stream[] r1 = new okhttp3.internal.http2.Http2Stream[r1]     // Catch: java.lang.Throwable -> Lc0
            java.lang.Object[] r0 = r0.toArray(r1)     // Catch: java.lang.Throwable -> Lc0
            okhttp3.internal.http2.Http2Stream[] r0 = (okhttp3.internal.http2.Http2Stream[]) r0     // Catch: java.lang.Throwable -> Lc0
            r6 = r0
            r0 = r3
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r0.streams     // Catch: java.lang.Throwable -> Lc0
            r0.clear()     // Catch: java.lang.Throwable -> Lc0
        L42:
            r0 = r3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc0
            r0 = r4
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L84
            r0 = r6
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L52:
            r0 = r4
            r7 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L84
            r0 = r6
            r1 = r9
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r1 = r5
            r0.close(r1)     // Catch: java.io.IOException -> L6e
            r0 = r4
            r7 = r0
            goto L7b
        L6e:
            r10 = move-exception
            r0 = r4
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L7b
            r0 = r10
            r7 = r0
        L7b:
            int r9 = r9 + 1
            r0 = r7
            r4 = r0
            goto L52
        L84:
            r0 = r3
            okhttp3.internal.http2.Http2Writer r0 = r0.writer     // Catch: java.io.IOException -> L91
            r0.close()     // Catch: java.io.IOException -> L91
            r0 = r7
            r4 = r0
            goto L9c
        L91:
            r5 = move-exception
            r0 = r7
            r4 = r0
            r0 = r7
            if (r0 != 0) goto L9c
            r0 = r5
            r4 = r0
        L9c:
            r0 = r3
            java.net.Socket r0 = r0.socket     // Catch: java.io.IOException -> La6
            r0.close()     // Catch: java.io.IOException -> La6
            goto La7
        La6:
            r4 = move-exception
        La7:
            r0 = r3
            java.util.concurrent.ScheduledExecutorService r0 = r0.writerExecutor
            r0.shutdown()
            r0 = r3
            java.util.concurrent.ExecutorService r0 = r0.pushExecutor
            r0.shutdown()
            r0 = r4
            if (r0 != 0) goto Lbe
            return
        Lbe:
            r0 = r4
            throw r0
        Lc0:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc0
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.close(okhttp3.internal.http2.ErrorCode, okhttp3.internal.http2.ErrorCode):void");
    }

    public void flush() {
        this.writer.flush();
    }

    public Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    Http2Stream getStream(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = this.streams.get(Integer.valueOf(i));
        }
        return http2Stream;
    }

    public boolean isShutdown() {
        boolean z;
        synchronized (this) {
            z = this.shutdown;
        }
        return z;
    }

    public int maxConcurrentStreams() {
        int maxConcurrentStreams;
        synchronized (this) {
            maxConcurrentStreams = this.peerSettings.getMaxConcurrentStreams(Integer.MAX_VALUE);
        }
        return maxConcurrentStreams;
    }

    public Http2Stream newStream(List<Header> list, boolean z) {
        return newStream(0, list, z);
    }

    public int openStreamCount() {
        int size;
        synchronized (this) {
            size = this.streams.size();
        }
        return size;
    }

    void pushDataLater(final int i, BufferedSource bufferedSource, final int i2, final boolean z) {
        final Buffer buffer = new Buffer();
        long j = i2;
        bufferedSource.require(j);
        bufferedSource.read(buffer, j);
        if (buffer.size() == j) {
            this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.5
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        boolean onData = Http2Connection.this.pushObserver.onData(i, buffer, i2, z);
                        if (onData) {
                            Http2Connection.this.writer.rstStream(i, ErrorCode.CANCEL);
                        }
                        if (!onData && !z) {
                            return;
                        }
                        synchronized (Http2Connection.this) {
                            Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                        }
                    } catch (IOException e) {
                    }
                }
            });
            return;
        }
        throw new IOException(buffer.size() + " != " + i2);
    }

    void pushHeadersLater(final int i, final List<Header> list, final boolean z) {
        try {
            this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.4
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    boolean onHeaders = Http2Connection.this.pushObserver.onHeaders(i, list, z);
                    if (onHeaders) {
                        try {
                            Http2Connection.this.writer.rstStream(i, ErrorCode.CANCEL);
                        } catch (IOException e) {
                            return;
                        }
                    }
                    if (onHeaders || z) {
                        synchronized (Http2Connection.this) {
                            Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                        }
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    void pushRequestLater(final int i, final List<Header> list) {
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i))) {
                writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i));
            try {
                this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Request[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.3
                    @Override // okhttp3.internal.NamedRunnable
                    public void execute() {
                        if (Http2Connection.this.pushObserver.onRequest(i, list)) {
                            try {
                                Http2Connection.this.writer.rstStream(i, ErrorCode.CANCEL);
                                synchronized (Http2Connection.this) {
                                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                                }
                            } catch (IOException e) {
                            }
                        }
                    }
                });
            } catch (RejectedExecutionException e) {
            }
        }
    }

    void pushResetLater(final int i, final ErrorCode errorCode) {
        this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.6
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                Http2Connection.this.pushObserver.onReset(i, errorCode);
                synchronized (Http2Connection.this) {
                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                }
            }
        });
    }

    public Http2Stream pushStream(int i, List<Header> list, boolean z) {
        if (!this.client) {
            return newStream(i, list, z);
        }
        throw new IllegalStateException("Client cannot push requests.");
    }

    boolean pushedStream(int i) {
        boolean z = true;
        if (i == 0 || (i & 1) != 0) {
            z = false;
        }
        return z;
    }

    public Http2Stream removeStream(int i) {
        Http2Stream remove;
        synchronized (this) {
            remove = this.streams.remove(Integer.valueOf(i));
            notifyAll();
        }
        return remove;
    }

    public void setSettings(Settings settings) {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    throw new ConnectionShutdownException();
                }
                this.okHttpSettings.merge(settings);
            }
            this.writer.settings(settings);
        }
    }

    public void shutdown(ErrorCode errorCode) {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.shutdown) {
                    return;
                }
                this.shutdown = true;
                this.writer.goAway(this.lastGoodStreamId, errorCode, Util.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public void start() {
        start(true);
    }

    void start(boolean z) {
        if (z) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, initialWindowSize - 65535);
            }
        }
        new Thread(this.readerRunnable).start();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
        r0 = java.lang.Math.min((int) java.lang.Math.min((long) r12, r0), r6.writer.maxDataLength());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
        r6.bytesLeftInWriteWindow -= r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeData(int r7, boolean r8, okio.Buffer r9, long r10) {
        /*
            Method dump skipped, instructions count: 190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    void writePing(boolean z, int i, int i2) {
        boolean z2;
        if (!z) {
            synchronized (this) {
                z2 = this.awaitingPong;
                this.awaitingPong = true;
            }
            if (z2) {
                failConnection();
                return;
            }
        }
        try {
            this.writer.ping(z, i, i2);
        } catch (IOException e) {
            failConnection();
        }
    }

    void writePingAndAwaitPong() {
        writePing(false, 1330343787, -257978967);
        awaitPong();
    }

    public void writeSynReply(int i, boolean z, List<Header> list) {
        this.writer.synReply(z, i, list);
    }

    public void writeSynReset(int i, ErrorCode errorCode) {
        this.writer.rstStream(i, errorCode);
    }

    public void writeSynResetLater(final int i, final ErrorCode errorCode) {
        try {
            this.writerExecutor.execute(new NamedRunnable("OkHttp %s stream %d", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.1
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        Http2Connection.this.writeSynReset(i, errorCode);
                    } catch (IOException e) {
                        Http2Connection.this.failConnection();
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    public void writeWindowUpdateLater(final int i, final long j) {
        try {
            this.writerExecutor.execute(new NamedRunnable("OkHttp Window Update %s stream %d", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.2
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        Http2Connection.this.writer.windowUpdate(i, j);
                    } catch (IOException e) {
                        Http2Connection.this.failConnection();
                    }
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }
}
