package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
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
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import p645m.AbstractC15173d;
import p645m.AbstractC15174e;
import p645m.C15170c;
import p645m.C15175f;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Connection.class */
public final class Http2Connection implements Closeable {
    public static final ExecutorService listenerExecutor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Http2Connection", true));
    public boolean awaitingPong;
    public long bytesLeftInWriteWindow;
    public final boolean client;
    public final String hostname;
    public int lastGoodStreamId;
    public final Listener listener;
    public int nextStreamId;
    public final ExecutorService pushExecutor;
    public final PushObserver pushObserver;
    public final ReaderRunnable readerRunnable;
    public boolean shutdown;
    public final Socket socket;
    public final Http2Writer writer;
    public final ScheduledExecutorService writerExecutor;
    public final Map<Integer, Http2Stream> streams = new LinkedHashMap();
    public long unacknowledgedBytesRead = 0;
    public Settings okHttpSettings = new Settings();
    public final Settings peerSettings = new Settings();
    public boolean receivedInitialPeerSettings = false;
    public final Set<Integer> currentPushRequests = new LinkedHashSet();

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Builder.class */
    public static class Builder {
        public boolean client;
        public String hostname;
        public int pingIntervalMillis;
        public AbstractC15173d sink;
        public Socket socket;
        public AbstractC15174e source;
        public Listener listener = Listener.REFUSE_INCOMING_STREAMS;
        public PushObserver pushObserver = PushObserver.CANCEL;

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

        public Builder socket(Socket socket, String str, AbstractC15174e eVar, AbstractC15173d dVar) {
            this.socket = socket;
            this.hostname = str;
            this.source = eVar;
            this.sink = dVar;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Connection$Listener.class */
    public static abstract class Listener {
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection.Listener.1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(Http2Stream http2Stream) throws IOException {
                http2Stream.close(ErrorCode.REFUSED_STREAM);
            }
        };

        public void onSettings(Http2Connection http2Connection) {
        }

        public abstract void onStream(Http2Stream http2Stream) throws IOException;
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Connection$PingRunnable.class */
    public final class PingRunnable extends NamedRunnable {
        public final int payload1;
        public final int payload2;
        public final boolean reply;

        public PingRunnable(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", Http2Connection.this.hostname, Integer.valueOf(i), Integer.valueOf(i2));
            this.reply = z;
            this.payload1 = i;
            this.payload2 = i2;
        }

        @Override // okhttp3.internal.NamedRunnable
        public void execute() {
            Http2Connection.this.writePing(this.reply, this.payload1, this.payload2);
        }
    }

    /* loaded from: classes3-dex2jar.jar:okhttp3/internal/http2/Http2Connection$ReaderRunnable.class */
    public class ReaderRunnable extends NamedRunnable implements Http2Reader.Handler {
        public final Http2Reader reader;

        public ReaderRunnable(Http2Reader http2Reader) {
            super("OkHttp %s", Http2Connection.this.hostname);
            this.reader = http2Reader;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        public final void applyAndAckSettings(final Settings settings) {
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
        public void data(boolean z, int i, AbstractC15174e eVar, int i2) throws IOException {
            if (Http2Connection.this.pushedStream(i)) {
                Http2Connection.this.pushDataLater(i, eVar, i2, z);
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream == null) {
                Http2Connection.this.writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                long j = i2;
                Http2Connection.this.updateConnectionFlowControl(j);
                eVar.skip(j);
                return;
            }
            stream.receiveData(eVar, i2);
            if (z) {
                stream.receiveFin();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r5v1, types: [okhttp3.internal.http2.Http2Connection] */
        /* JADX WARN: Type inference failed for: r5v5 */
        /* JADX WARN: Type inference failed for: r5v6 */
        /* JADX WARN: Type inference failed for: r5v7 */
        @Override // okhttp3.internal.NamedRunnable
        public void execute() {
            ErrorCode errorCode;
            ErrorCode errorCode2;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    while (this.reader.nextFrame(false, this)) {
                    }
                    errorCode2 = ErrorCode.NO_ERROR;
                } catch (IOException e) {
                }
                try {
                    errorCode = ErrorCode.CANCEL;
                    errorCode3 = Http2Connection.this;
                } catch (IOException e2) {
                    errorCode2 = ErrorCode.PROTOCOL_ERROR;
                    errorCode = ErrorCode.PROTOCOL_ERROR;
                    errorCode3 = Http2Connection.this;
                    errorCode3.close(errorCode2, errorCode);
                    Util.closeQuietly(this.reader);
                }
            } catch (IOException e3) {
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode3;
                try {
                    Http2Connection.this.close(errorCode, errorCode3);
                } catch (IOException e4) {
                }
                Util.closeQuietly(this.reader);
                throw th;
            }
            errorCode3.close(errorCode2, errorCode);
            Util.closeQuietly(this.reader);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i, ErrorCode errorCode, C15175f fVar) {
            Http2Stream[] http2StreamArr;
            fVar.mo268f();
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
                    if (z) {
                        stream.receiveFin();
                    }
                } else if (!Http2Connection.this.shutdown) {
                    if (i > Http2Connection.this.lastGoodStreamId) {
                        if (i % 2 != Http2Connection.this.nextStreamId % 2) {
                            final Http2Stream http2Stream = new Http2Stream(i, Http2Connection.this, false, z, Util.toHeaders(list));
                            Http2Connection.this.lastGoodStreamId = i;
                            Http2Connection.this.streams.put(Integer.valueOf(i), http2Stream);
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
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z, int i, int i2) {
            if (z) {
                synchronized (Http2Connection.this) {
                    Http2Connection.this.awaitingPong = false;
                    Http2Connection.this.notifyAll();
                }
                return;
            }
            try {
                Http2Connection.this.writerExecutor.execute(new PingRunnable(true, i, i2));
            } catch (RejectedExecutionException e) {
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
            if (removeStream != null) {
                removeStream.receiveRstStream(errorCode);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r16v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // okhttp3.internal.http2.Http2Reader.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void settings(boolean r9, okhttp3.internal.http2.Settings r10) {
            /*
                Method dump skipped, instructions count: 272
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.ReaderRunnable.settings(boolean, okhttp3.internal.http2.Settings):void");
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i, long j) {
            if (i == 0) {
                synchronized (Http2Connection.this) {
                    Http2Connection.this.bytesLeftInWriteWindow += j;
                    Http2Connection.this.notifyAll();
                }
                return;
            }
            Http2Stream stream = Http2Connection.this.getStream(i);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j);
                }
            }
        }
    }

    public Http2Connection(Builder builder) {
        this.pushObserver = builder.pushObserver;
        boolean z = builder.client;
        this.client = z;
        this.listener = builder.listener;
        this.nextStreamId = z ? 1 : 2;
        if (builder.client) {
            this.nextStreamId += 2;
        }
        if (builder.client) {
            this.okHttpSettings.set(7, 16777216);
        }
        this.hostname = builder.hostname;
        this.writerExecutor = new ScheduledThreadPoolExecutor(1, Util.threadFactory(Util.format("OkHttp %s Writer", this.hostname), false));
        if (builder.pingIntervalMillis != 0) {
            ScheduledExecutorService scheduledExecutorService = this.writerExecutor;
            PingRunnable pingRunnable = new PingRunnable(false, 0, 0);
            int i = builder.pingIntervalMillis;
            scheduledExecutorService.scheduleAtFixedRate(pingRunnable, i, i, TimeUnit.MILLISECONDS);
        }
        this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(Util.format("OkHttp %s Push Observer", this.hostname), true));
        this.peerSettings.set(7, 65535);
        this.peerSettings.set(5, 16384);
        this.bytesLeftInWriteWindow = this.peerSettings.getInitialWindowSize();
        this.socket = builder.socket;
        this.writer = new Http2Writer(builder.sink, this.client);
        this.readerRunnable = new ReaderRunnable(new Http2Reader(builder.source, this.client));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:2|(3:53|3|4)|6|e|13|14|(8:16|(2:17|(6:19|51|20|21|56|26)(0))|27|28|47|33|35|(1:37)(2:38|39))(0)|49|27|28|47|33|35|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
        r4 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0097, code lost:
        if (r7 == null) goto L_0x009a;
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
    public void close(okhttp3.internal.http2.ErrorCode r4, okhttp3.internal.http2.ErrorCode r5) throws java.io.IOException {
        /*
            r3 = this;
            r0 = 0
            r6 = r0
            r0 = r3
            r1 = r4
            r0.shutdown(r1)     // Catch: IOException -> 0x000c
            r0 = 0
            r4 = r0
            goto L_0x000d
        L_0x000c:
            r4 = move-exception
        L_0x000d:
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r0.streams     // Catch: all -> 0x00c0
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00c0
            if (r0 != 0) goto L_0x0042
            r0 = r3
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r0.streams     // Catch: all -> 0x00c0
            java.util.Collection r0 = r0.values()     // Catch: all -> 0x00c0
            r1 = r3
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r1 = r1.streams     // Catch: all -> 0x00c0
            int r1 = r1.size()     // Catch: all -> 0x00c0
            okhttp3.internal.http2.Http2Stream[] r1 = new okhttp3.internal.http2.Http2Stream[r1]     // Catch: all -> 0x00c0
            java.lang.Object[] r0 = r0.toArray(r1)     // Catch: all -> 0x00c0
            okhttp3.internal.http2.Http2Stream[] r0 = (okhttp3.internal.http2.Http2Stream[]) r0     // Catch: all -> 0x00c0
            r6 = r0
            r0 = r3
            java.util.Map<java.lang.Integer, okhttp3.internal.http2.Http2Stream> r0 = r0.streams     // Catch: all -> 0x00c0
            r0.clear()     // Catch: all -> 0x00c0
        L_0x0042:
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x00c0
            r0 = r4
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0084
            r0 = r6
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0052:
            r0 = r4
            r7 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x0084
            r0 = r6
            r1 = r9
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r1 = r5
            r0.close(r1)     // Catch: IOException -> 0x006e
            r0 = r4
            r7 = r0
            goto L_0x007b
        L_0x006e:
            r10 = move-exception
            r0 = r4
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L_0x007b
            r0 = r10
            r7 = r0
        L_0x007b:
            int r9 = r9 + 1
            r0 = r7
            r4 = r0
            goto L_0x0052
        L_0x0084:
            r0 = r3
            okhttp3.internal.http2.Http2Writer r0 = r0.writer     // Catch: IOException -> 0x0091
            r0.close()     // Catch: IOException -> 0x0091
            r0 = r7
            r4 = r0
            goto L_0x009c
        L_0x0091:
            r5 = move-exception
            r0 = r7
            r4 = r0
            r0 = r7
            if (r0 != 0) goto L_0x009c
            r0 = r5
            r4 = r0
        L_0x009c:
            r0 = r3
            java.net.Socket r0 = r0.socket     // Catch: IOException -> 0x00a6
            r0.close()     // Catch: IOException -> 0x00a6
            goto L_0x00a7
        L_0x00a6:
            r4 = move-exception
        L_0x00a7:
            r0 = r3
            java.util.concurrent.ScheduledExecutorService r0 = r0.writerExecutor
            r0.shutdown()
            r0 = r3
            java.util.concurrent.ExecutorService r0 = r0.pushExecutor
            r0.shutdown()
            r0 = r4
            if (r0 != 0) goto L_0x00be
            return
        L_0x00be:
            r0 = r4
            throw r0
        L_0x00c0:
            r4 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: all -> 0x00c0
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.close(okhttp3.internal.http2.ErrorCode, okhttp3.internal.http2.ErrorCode):void");
    }

    public final void failConnection() {
        try {
            close(ErrorCode.PROTOCOL_ERROR, ErrorCode.PROTOCOL_ERROR);
        } catch (IOException e) {
        }
    }

    public void flush() throws IOException {
        this.writer.flush();
    }

    public Http2Stream getStream(int i) {
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

    /* JADX WARN: Removed duplicated region for block: B:24:0x0074 A[Catch: all -> 0x00d6, TryCatch #1 {, blocks: (B:5:0x000f, B:29:0x008b, B:30:0x009b, B:32:0x00a2, B:34:0x00af, B:40:0x00bf, B:41:0x00cb, B:42:0x00cc, B:7:0x0011, B:9:0x001a, B:11:0x0022, B:13:0x0028, B:15:0x004d, B:17:0x0056, B:22:0x006c, B:24:0x0074, B:26:0x0086, B:43:0x00cf, B:44:0x00d5), top: B:50:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.internal.http2.Http2Stream newStream(int r8, java.util.List<okhttp3.internal.http2.Header> r9, boolean r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.newStream(int, java.util.List, boolean):okhttp3.internal.http2.Http2Stream");
    }

    public Http2Stream newStream(List<Header> list, boolean z) throws IOException {
        return newStream(0, list, z);
    }

    public void pushDataLater(final int i, AbstractC15174e eVar, final int i2, final boolean z) throws IOException {
        final C15170c cVar = new C15170c();
        long j = i2;
        eVar.mo298e(j);
        eVar.read(cVar, j);
        if (cVar.m348i() == j) {
            pushExecutorExecute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.5
                @Override // okhttp3.internal.NamedRunnable
                public void execute() {
                    try {
                        boolean onData = Http2Connection.this.pushObserver.onData(i, cVar, i2, z);
                        if (onData) {
                            Http2Connection.this.writer.rstStream(i, ErrorCode.CANCEL);
                        }
                        if (onData || z) {
                            synchronized (Http2Connection.this) {
                                Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                            }
                        }
                    } catch (IOException e) {
                    }
                }
            });
            return;
        }
        throw new IOException(cVar.m348i() + " != " + i2);
    }

    public final void pushExecutorExecute(NamedRunnable namedRunnable) {
        synchronized (this) {
            if (!isShutdown()) {
                this.pushExecutor.execute(namedRunnable);
            }
        }
    }

    public void pushHeadersLater(final int i, final List<Header> list, final boolean z) {
        try {
            pushExecutorExecute(new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.4
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

    public void pushRequestLater(final int i, final List<Header> list) {
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i))) {
                writeSynResetLater(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i));
            try {
                pushExecutorExecute(new NamedRunnable("OkHttp %s Push Request[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.3
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

    public void pushResetLater(final int i, final ErrorCode errorCode) {
        pushExecutorExecute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[]{this.hostname, Integer.valueOf(i)}) { // from class: okhttp3.internal.http2.Http2Connection.6
            @Override // okhttp3.internal.NamedRunnable
            public void execute() {
                Http2Connection.this.pushObserver.onReset(i, errorCode);
                synchronized (Http2Connection.this) {
                    Http2Connection.this.currentPushRequests.remove(Integer.valueOf(i));
                }
            }
        });
    }

    public boolean pushedStream(int i) {
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

    public void shutdown(ErrorCode errorCode) throws IOException {
        synchronized (this.writer) {
            synchronized (this) {
                if (!this.shutdown) {
                    this.shutdown = true;
                    this.writer.goAway(this.lastGoodStreamId, errorCode, Util.EMPTY_BYTE_ARRAY);
                }
            }
        }
    }

    public void start() throws IOException {
        start(true);
    }

    public void start(boolean z) throws IOException {
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

    public void updateConnectionFlowControl(long j) {
        synchronized (this) {
            this.unacknowledgedBytesRead += j;
            if (this.unacknowledgedBytesRead >= this.okHttpSettings.getInitialWindowSize() / 2) {
                writeWindowUpdateLater(0, this.unacknowledgedBytesRead);
                this.unacknowledgedBytesRead = 0L;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeData(int r7, boolean r8, p645m.C15170c r9, long r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, m.c, long):void");
    }

    public void writePing(boolean z, int i, int i2) {
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

    public void writeSynReset(int i, ErrorCode errorCode) throws IOException {
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
