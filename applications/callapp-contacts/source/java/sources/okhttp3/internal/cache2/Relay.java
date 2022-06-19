package okhttp3.internal.cache2;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import okhttp3.internal.Util;
import p092c.AbstractC3190ad;
import p092c.C3191ae;
import p092c.C3202f;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\t\u0018�� :2\u00020\u0001:\u0002:;B3\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0002\u0010\u000bJ\u000e\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\tJ\b\u00105\u001a\u0004\u0018\u00010\u0005J \u00106\u001a\u0002032\u0006\u00107\u001a\u00020\t2\u0006\u00104\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007H\u0002J\u0010\u00109\u001a\u0002032\u0006\u00104\u001a\u00020\u0007H\u0002R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0015R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0011\u0010'\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b(\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b)\u0010\u0011\"\u0004\b*\u0010+R\u001c\u0010,\u001a\u0004\u0018\u00010-X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b.\u0010/\"\u0004\b0\u00101¨\u0006<"}, m4298d2 = {"Lokhttp3/internal/cache2/Relay;", "", "file", "Ljava/io/RandomAccessFile;", "upstream", "Lokio/Source;", "upstreamPos", "", "metadata", "Lokio/ByteString;", "bufferMaxSize", "(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;J)V", "buffer", "Lokio/Buffer;", "getBuffer", "()Lokio/Buffer;", "getBufferMaxSize", "()J", EventConstants.COMPLETE, "", "getComplete", "()Z", "setComplete", "(Z)V", "getFile", "()Ljava/io/RandomAccessFile;", "setFile", "(Ljava/io/RandomAccessFile;)V", "isClosed", "sourceCount", "", "getSourceCount", "()I", "setSourceCount", "(I)V", "getUpstream", "()Lokio/Source;", "setUpstream", "(Lokio/Source;)V", "upstreamBuffer", "getUpstreamBuffer", "getUpstreamPos", "setUpstreamPos", "(J)V", "upstreamReader", "Ljava/lang/Thread;", "getUpstreamReader", "()Ljava/lang/Thread;", "setUpstreamReader", "(Ljava/lang/Thread;)V", "commit", "", "upstreamSize", "newSource", "writeHeader", "prefix", "metadataSize", "writeMetadata", "Companion", "RelaySource", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache2/Relay.class */
public final class Relay {
    private static final long FILE_HEADER_SIZE = 32;
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    private final C3202f buffer;
    private final long bufferMaxSize;
    private boolean complete;
    private RandomAccessFile file;
    private final C3208i metadata;
    private int sourceCount;
    private AbstractC3190ad upstream;
    private final C3202f upstreamBuffer;
    private long upstreamPos;
    private Thread upstreamReader;
    public static final Companion Companion = new Companion(null);
    public static final C3208i PREFIX_CLEAN = C3208i.C3209a.m39170a("OkHttp cache v1\n");
    public static final C3208i PREFIX_DIRTY = C3208i.C3209a.m39170a("OkHttp DIRTY :(\n");

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\tX\u0082T¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lokhttp3/internal/cache2/Relay$Companion;", "", "()V", "FILE_HEADER_SIZE", "", "PREFIX_CLEAN", "Lokio/ByteString;", "PREFIX_DIRTY", "SOURCE_FILE", "", "SOURCE_UPSTREAM", "edit", "Lokhttp3/internal/cache2/Relay;", "file", "Ljava/io/File;", "upstream", "Lokio/Source;", "metadata", "bufferMaxSize", "read", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache2/Relay$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Relay edit(File file, AbstractC3190ad upstream, C3208i metadata, long j) throws IOException {
            C18524p.m3840d(file, "file");
            C18524p.m3840d(upstream, "upstream");
            C18524p.m3840d(metadata, "metadata");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            Relay relay = new Relay(randomAccessFile, upstream, 0L, metadata, j, null);
            randomAccessFile.setLength(0L);
            relay.writeHeader(Relay.PREFIX_DIRTY, -1L, -1L);
            return relay;
        }

        public final Relay read(File file) throws IOException {
            C18524p.m3840d(file, "file");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            FileChannel channel = randomAccessFile.getChannel();
            C18524p.m3843b(channel, "randomAccessFile.channel");
            FileOperator fileOperator = new FileOperator(channel);
            C3202f c3202f = new C3202f();
            fileOperator.read(0L, c3202f, 32L);
            if (!(!C18524p.m3850a(c3202f.mo39120d(Relay.PREFIX_CLEAN.mo39173f()), Relay.PREFIX_CLEAN))) {
                long mo39110l = c3202f.mo39110l();
                long mo39110l2 = c3202f.mo39110l();
                C3202f c3202f2 = new C3202f();
                fileOperator.read(mo39110l + 32, c3202f2, mo39110l2);
                return new Relay(randomAccessFile, null, mo39110l, c3202f2.mo39107q(), 0L, null);
            }
            throw new IOException("unreadable cache file");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lokhttp3/internal/cache2/Relay$RelaySource;", "Lokio/Source;", "(Lokhttp3/internal/cache2/Relay;)V", "fileOperator", "Lokhttp3/internal/cache2/FileOperator;", "sourcePos", "", "timeout", "Lokio/Timeout;", EventConstants.CLOSE, "", "read", "sink", "Lokio/Buffer;", "byteCount", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache2/Relay$RelaySource.class */
    public final class RelaySource implements AbstractC3190ad {
        private FileOperator fileOperator;
        private long sourcePos;
        private final C3191ae timeout = new C3191ae();

        public RelaySource() {
            Relay.this = r6;
            RandomAccessFile file = r6.getFile();
            C18524p.m3851a(file);
            FileChannel channel = file.getChannel();
            C18524p.m3843b(channel, "file!!.channel");
            this.fileOperator = new FileOperator(channel);
        }

        @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            synchronized (Relay.this) {
                Relay relay = Relay.this;
                relay.setSourceCount(relay.getSourceCount() - 1);
                if (Relay.this.getSourceCount() == 0) {
                    randomAccessFile = Relay.this.getFile();
                    Relay.this.setFile(null);
                }
                C20128v c20128v = C20128v.f66529a;
            }
            if (randomAccessFile == null) {
                return;
            }
            Util.closeQuietly(randomAccessFile);
        }

        @Override // p092c.AbstractC3190ad
        public final long read(C3202f sink, long j) throws IOException {
            boolean z;
            C18524p.m3840d(sink, "sink");
            if (this.fileOperator != null) {
                synchronized (Relay.this) {
                    while (true) {
                        if (this.sourcePos != Relay.this.getUpstreamPos()) {
                            long upstreamPos = Relay.this.getUpstreamPos() - Relay.this.getBuffer().f11572b;
                            if (this.sourcePos >= upstreamPos) {
                                long min = Math.min(j, Relay.this.getUpstreamPos() - this.sourcePos);
                                Relay.this.getBuffer().m39216a(sink, this.sourcePos - upstreamPos, min);
                                this.sourcePos += min;
                                return min;
                            }
                            z = true;
                        } else if (!Relay.this.getComplete()) {
                            if (Relay.this.getUpstreamReader() == null) {
                                Relay.this.setUpstreamReader(Thread.currentThread());
                                z = true;
                                break;
                            }
                            this.timeout.waitUntilNotified(Relay.this);
                        } else {
                            return -1L;
                        }
                    }
                    if (z) {
                        long min2 = Math.min(j, Relay.this.getUpstreamPos() - this.sourcePos);
                        FileOperator fileOperator = this.fileOperator;
                        C18524p.m3851a(fileOperator);
                        fileOperator.read(this.sourcePos + 32, sink, min2);
                        this.sourcePos += min2;
                        return min2;
                    }
                    try {
                        AbstractC3190ad upstream = Relay.this.getUpstream();
                        C18524p.m3851a(upstream);
                        long read = upstream.read(Relay.this.getUpstreamBuffer(), Relay.this.getBufferMaxSize());
                        if (read == -1) {
                            Relay relay = Relay.this;
                            relay.commit(relay.getUpstreamPos());
                            synchronized (Relay.this) {
                                Relay.this.setUpstreamReader(null);
                                Relay relay2 = Relay.this;
                                if (relay2 == null) {
                                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                                }
                                relay2.notifyAll();
                                C20128v c20128v = C20128v.f66529a;
                            }
                            return -1L;
                        }
                        long min3 = Math.min(read, j);
                        Relay.this.getUpstreamBuffer().m39216a(sink, 0L, min3);
                        this.sourcePos += min3;
                        FileOperator fileOperator2 = this.fileOperator;
                        C18524p.m3851a(fileOperator2);
                        fileOperator2.write(Relay.this.getUpstreamPos() + 32, Relay.this.getUpstreamBuffer().m39190w(), read);
                        synchronized (Relay.this) {
                            Relay.this.getBuffer().write(Relay.this.getUpstreamBuffer(), read);
                            if (Relay.this.getBuffer().f11572b > Relay.this.getBufferMaxSize()) {
                                Relay.this.getBuffer().mo39114h(Relay.this.getBuffer().f11572b - Relay.this.getBufferMaxSize());
                            }
                            Relay relay3 = Relay.this;
                            relay3.setUpstreamPos(relay3.getUpstreamPos() + read);
                            C20128v c20128v2 = C20128v.f66529a;
                        }
                        synchronized (Relay.this) {
                            Relay.this.setUpstreamReader(null);
                            Relay relay4 = Relay.this;
                            if (relay4 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                            }
                            relay4.notifyAll();
                            C20128v c20128v3 = C20128v.f66529a;
                        }
                        return min3;
                    } catch (Throwable th) {
                        synchronized (Relay.this) {
                            Relay.this.setUpstreamReader(null);
                            Relay relay5 = Relay.this;
                            if (relay5 == null) {
                                throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                            }
                            relay5.notifyAll();
                            C20128v c20128v4 = C20128v.f66529a;
                            throw th;
                        }
                    }
                }
            }
            throw new IllegalStateException("Check failed.".toString());
        }

        @Override // p092c.AbstractC3190ad
        public final C3191ae timeout() {
            return this.timeout;
        }
    }

    static {
        C3208i.C3209a c3209a = C3208i.f11583d;
        C3208i.C3209a c3209a2 = C3208i.f11583d;
    }

    private Relay(RandomAccessFile randomAccessFile, AbstractC3190ad abstractC3190ad, long j, C3208i c3208i, long j2) {
        this.file = randomAccessFile;
        this.upstream = abstractC3190ad;
        this.upstreamPos = j;
        this.metadata = c3208i;
        this.bufferMaxSize = j2;
        this.upstreamBuffer = new C3202f();
        this.complete = this.upstream == null;
        this.buffer = new C3202f();
    }

    public /* synthetic */ Relay(RandomAccessFile randomAccessFile, AbstractC3190ad abstractC3190ad, long j, C3208i c3208i, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(randomAccessFile, abstractC3190ad, j, c3208i, j2);
    }

    public final void writeHeader(C3208i c3208i, long j, long j2) throws IOException {
        C3202f c3202f = new C3202f();
        c3202f.mo39144b(c3208i);
        c3202f.m39198i(j);
        c3202f.m39198i(j2);
        if (c3202f.f11572b == 32) {
            RandomAccessFile randomAccessFile = this.file;
            C18524p.m3851a(randomAccessFile);
            FileChannel channel = randomAccessFile.getChannel();
            C18524p.m3843b(channel, "file!!.channel");
            new FileOperator(channel).write(0L, c3202f, 32L);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    private final void writeMetadata(long j) throws IOException {
        C3202f c3202f = new C3202f();
        c3202f.mo39144b(this.metadata);
        RandomAccessFile randomAccessFile = this.file;
        C18524p.m3851a(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        C18524p.m3843b(channel, "file!!.channel");
        new FileOperator(channel).write(32 + j, c3202f, this.metadata.mo39173f());
    }

    public final void commit(long j) throws IOException {
        writeMetadata(j);
        RandomAccessFile randomAccessFile = this.file;
        C18524p.m3851a(randomAccessFile);
        randomAccessFile.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j, this.metadata.mo39173f());
        RandomAccessFile randomAccessFile2 = this.file;
        C18524p.m3851a(randomAccessFile2);
        randomAccessFile2.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
            C20128v c20128v = C20128v.f66529a;
        }
        AbstractC3190ad abstractC3190ad = this.upstream;
        if (abstractC3190ad != null) {
            Util.closeQuietly(abstractC3190ad);
        }
        this.upstream = null;
    }

    public final C3202f getBuffer() {
        return this.buffer;
    }

    public final long getBufferMaxSize() {
        return this.bufferMaxSize;
    }

    public final boolean getComplete() {
        return this.complete;
    }

    public final RandomAccessFile getFile() {
        return this.file;
    }

    public final int getSourceCount() {
        return this.sourceCount;
    }

    public final AbstractC3190ad getUpstream() {
        return this.upstream;
    }

    public final C3202f getUpstreamBuffer() {
        return this.upstreamBuffer;
    }

    public final long getUpstreamPos() {
        return this.upstreamPos;
    }

    public final Thread getUpstreamReader() {
        return this.upstreamReader;
    }

    public final boolean isClosed() {
        return this.file == null;
    }

    public final C3208i metadata() {
        return this.metadata;
    }

    public final AbstractC3190ad newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }

    public final void setComplete(boolean z) {
        this.complete = z;
    }

    public final void setFile(RandomAccessFile randomAccessFile) {
        this.file = randomAccessFile;
    }

    public final void setSourceCount(int i) {
        this.sourceCount = i;
    }

    public final void setUpstream(AbstractC3190ad abstractC3190ad) {
        this.upstream = abstractC3190ad;
    }

    public final void setUpstreamPos(long j) {
        this.upstreamPos = j;
    }

    public final void setUpstreamReader(Thread thread) {
        this.upstreamReader = thread;
    }
}
