package p092c;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.C15291b;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18400a;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import p092c.p093a.C3184a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\rH\u0016J\b\u0010\u001e\u001a\u00020\u0001H\u0016J\u0018\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J(\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020'H\u0016J \u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020'2\u0006\u0010 \u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0016J\u0018\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010(\u001a\u00020\u00122\u0006\u0010%\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020\u0014H\u0016J\b\u0010+\u001a\u00020'H\u0016J\u0010\u0010+\u001a\u00020'2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0018H\u0016J\u0010\u0010,\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010-\u001a\u00020\u0012H\u0016J\u0010\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020'H\u0016J\u0018\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010/\u001a\u00020\u0012H\u0016J\b\u00100\u001a\u00020\"H\u0016J\b\u00101\u001a\u00020\"H\u0016J\b\u00102\u001a\u00020\u0012H\u0016J\b\u00103\u001a\u00020\u0012H\u0016J\b\u00104\u001a\u000205H\u0016J\b\u00106\u001a\u000205H\u0016J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u0018\u00107\u001a\u0002082\u0006\u0010#\u001a\u00020\u00122\u0006\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u000208H\u0016J\u0010\u0010;\u001a\u0002082\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010<\u001a\u00020\"H\u0016J\n\u0010=\u001a\u0004\u0018\u000108H\u0016J\b\u0010>\u001a\u000208H\u0016J\u0010\u0010>\u001a\u0002082\u0006\u0010?\u001a\u00020\u0012H\u0016J\u0010\u0010@\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010A\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010F\u001a\u00020GH\u0016J\b\u0010H\u001a\u000208H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006I"}, m4298d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", Payload.SOURCE, "Lokio/Source;", "(Lokio/Source;)V", "buffer", "Lokio/Buffer;", "getBuffer$annotations", "()V", "getBuffer", "()Lokio/Buffer;", "bufferField", "closed", "", EventConstants.CLOSE, "", "exhausted", "indexOf", "", C15291b.f55271a, "", "fromIndex", "toIndex", "bytes", "Lokio/ByteString;", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "peek", "rangeEquals", VastIconXmlManager.OFFSET, "bytesOffset", "", "byteCount", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "", "charset", "Ljava/nio/charset/Charset;", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "require", "select", "options", "Lokio/Options;", EventConstants.SKIP, "timeout", "Lokio/Timeout;", "toString", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.x */
/* loaded from: classes-dex2jar.jar:c/x.class */
public final class C3227x implements AbstractC3207h {

    /* renamed from: a */
    public final C3202f f11629a = new C3202f();

    /* renamed from: b */
    public boolean f11630b;

    /* renamed from: c */
    public final AbstractC3190ad f11631c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��'\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000e\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, m4298d2 = {"okio/RealBufferedSource$inputStream$1", "Ljava/io/InputStream;", "available", "", EventConstants.CLOSE, "", "read", "data", "", VastIconXmlManager.OFFSET, "byteCount", "toString", "", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.x$a */
    /* loaded from: classes-dex2jar.jar:c/x$a.class */
    public static final class C3228a extends InputStream {
        C3228a() {
            C3227x.this = r4;
        }

        @Override // java.io.InputStream
        public final int available() {
            if (!C3227x.this.f11630b) {
                return (int) Math.min(C3227x.this.f11629a.f11572b, 2147483647L);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            C3227x.this.close();
        }

        @Override // java.io.InputStream
        public final int read() {
            if (!C3227x.this.f11630b) {
                if (C3227x.this.f11629a.f11572b != 0 || C3227x.this.f11631c.read(C3227x.this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                    return C3227x.this.f11629a.mo39113i() & 255;
                }
                return -1;
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream
        public final int read(byte[] data, int i, int i2) {
            C18524p.m3840d(data, "data");
            if (!C3227x.this.f11630b) {
                C3195c.m39226a(data.length, i, i2);
                if (C3227x.this.f11629a.f11572b != 0 || C3227x.this.f11631c.read(C3227x.this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                    return C3227x.this.f11629a.m39211a(data, i, i2);
                }
                return -1;
            }
            throw new IOException("closed");
        }

        public final String toString() {
            return C3227x.this + ".inputStream()";
        }
    }

    public C3227x(AbstractC3190ad source) {
        C18524p.m3840d(source, "source");
        this.f11631c = source;
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* renamed from: a */
    private long m39132a(byte b, long j) {
        boolean z = true;
        if (!this.f11630b) {
            char c = 0;
            if (j < 0) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException(("fromIndex=0 toIndex=" + j).toString());
            }
            while (c < j) {
                long m39222a = this.f11629a.m39222a(b, c, j);
                if (m39222a != -1) {
                    return m39222a;
                }
                long j2 = this.f11629a.f11572b;
                if (j2 >= j || this.f11631c.read(this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1L;
                }
                c = Math.max((long) c, j2);
            }
            return -1L;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final int mo39127a(C3219s options) {
        C18524p.m3840d(options, "options");
        if (!this.f11630b) {
            do {
                int m39240a = C3184a.m39240a(this.f11629a, options, true);
                if (m39240a != -2) {
                    if (m39240a == -1) {
                        return -1;
                    }
                    this.f11629a.mo39114h(options.f11604b[m39240a].mo39173f());
                    return m39240a;
                }
            } while (this.f11631c.read(this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final long mo39129a(AbstractC3188ab sink) {
        C18524p.m3840d(sink, "sink");
        char c = 0;
        while (this.f11631c.read(this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long m39201h = this.f11629a.m39201h();
            if (m39201h > 0) {
                c += m39201h;
                sink.write(this.f11629a, m39201h);
            }
        }
        char c2 = c;
        if (this.f11629a.f11572b > 0) {
            c2 = c + this.f11629a.f11572b;
            C3202f c3202f = this.f11629a;
            sink.write(c3202f, c3202f.f11572b);
        }
        return c2;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final C3202f mo39133a() {
        return this.f11629a;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final String mo39126a(Charset charset) {
        C18524p.m3840d(charset, "charset");
        this.f11629a.mo39145a(this.f11631c);
        return this.f11629a.mo39126a(charset);
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final void mo39131a(long j) {
        if (mo39123b(j)) {
            return;
        }
        throw new EOFException();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final void mo39128a(C3202f sink, long j) {
        C18524p.m3840d(sink, "sink");
        try {
            mo39131a(j);
            this.f11629a.mo39128a(sink, j);
        } catch (EOFException e) {
            sink.mo39145a((AbstractC3190ad) this.f11629a);
            throw e;
        }
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final void mo39125a(byte[] sink) {
        C18524p.m3840d(sink, "sink");
        try {
            mo39131a(sink.length);
            this.f11629a.mo39125a(sink);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (this.f11629a.f11572b <= 0) {
                    throw e;
                }
                C3202f c3202f = this.f11629a;
                int m39211a = c3202f.m39211a(sink, i2, (int) c3202f.f11572b);
                if (m39211a == -1) {
                    throw new AssertionError();
                }
                i = i2 + m39211a;
            }
        }
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: a */
    public final boolean mo39130a(long j, C3208i bytes) {
        C18524p.m3840d(bytes, "bytes");
        int mo39173f = bytes.mo39173f();
        C18524p.m3840d(bytes, "bytes");
        if (!this.f11630b) {
            if (j < 0 || mo39173f < 0 || bytes.mo39173f() - 0 < mo39173f) {
                return false;
            }
            for (int i = 0; i < mo39173f; i++) {
                long j2 = i + j;
                if (!mo39123b(1 + j2) || this.f11629a.m39207c(j2) != bytes.mo39178b(i + 0)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: b */
    public final C3202f mo39124b() {
        return this.f11629a;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: b */
    public final boolean mo39123b(long j) {
        if (j >= 0) {
            if (!(!this.f11630b)) {
                throw new IllegalStateException("closed".toString());
            }
            while (this.f11629a.f11572b < j) {
                if (this.f11631c.read(this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
    }

    /* renamed from: c */
    public final int m39122c() {
        mo39131a(4L);
        return this.f11629a.m39194n();
    }

    @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.f11630b) {
            this.f11630b = true;
            this.f11631c.close();
            this.f11629a.m39192u();
        }
    }

    /* renamed from: d */
    public final long m39121d() {
        return m39132a((byte) 0, Long.MAX_VALUE);
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: d */
    public final C3208i mo39120d(long j) {
        mo39131a(j);
        return this.f11629a.mo39120d(j);
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: e */
    public final boolean mo39119e() {
        if (!this.f11630b) {
            return this.f11629a.mo39119e() && this.f11631c.read(this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: f */
    public final AbstractC3207h mo39118f() {
        return C3218r.m39150a(new C3222u(this));
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    @Override // p092c.AbstractC3207h
    /* renamed from: f */
    public final String mo39117f(long j) {
        if (j >= 0) {
            char c = j == Long.MAX_VALUE ? (char) 65535 : j + 1;
            long m39132a = m39132a((byte) 10, c);
            if (m39132a != -1) {
                return C3184a.m39242a(this.f11629a, m39132a);
            }
            if (c < Long.MAX_VALUE && mo39123b(c) && this.f11629a.m39207c(c - 1) == 13 && mo39123b(1 + c) && this.f11629a.m39207c((long) c) == 10) {
                return C3184a.m39242a(this.f11629a, c);
            }
            C3202f c3202f = new C3202f();
            C3202f c3202f2 = this.f11629a;
            c3202f2.m39216a(c3202f, 0L, Math.min(32L, c3202f2.f11572b));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f11629a.f11572b, j) + " content=" + c3202f.mo39107q().mo39175d() + "…");
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)).toString());
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: g */
    public final InputStream mo39116g() {
        return new C3228a();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: g */
    public final byte[] mo39115g(long j) {
        mo39131a(j);
        return this.f11629a.mo39115g(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // p092c.AbstractC3207h
    /* renamed from: h */
    public final void mo39114h(long j) {
        ?? r6 = j;
        if (!this.f11630b) {
            while (r6 > 0) {
                if (this.f11629a.f11572b == 0 && this.f11631c.read(this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    throw new EOFException();
                }
                long min = Math.min((long) r6, this.f11629a.f11572b);
                this.f11629a.mo39114h(min);
                r6 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: i */
    public final byte mo39113i() {
        mo39131a(1L);
        return this.f11629a.mo39113i();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f11630b;
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: j */
    public final short mo39112j() {
        mo39131a(2L);
        return this.f11629a.mo39112j();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: k */
    public final int mo39111k() {
        mo39131a(4L);
        return this.f11629a.mo39111k();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: l */
    public final long mo39110l() {
        mo39131a(8L);
        return this.f11629a.mo39110l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [c.x] */
    @Override // p092c.AbstractC3207h
    /* renamed from: o */
    public final long mo39109o() {
        byte m39207c;
        int i;
        mo39131a(1L);
        ?? r0 = 0;
        while (true) {
            char c = r0;
            ?? r02 = c + 1;
            if (!mo39123b(r02)) {
                break;
            }
            m39207c = this.f11629a.m39207c((long) c);
            if ((m39207c < 48 || m39207c > 57) && !(c == 0 && m39207c == 45)) {
                break;
            }
            r0 = r02;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder("Expected leading [0-9] or '-' character but was 0x");
            String num = Integer.toString(m39207c, C18400a.m3998a(C18400a.m3998a(16)));
            C18524p.m3843b(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.f11629a.mo39109o();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: p */
    public final long mo39108p() {
        int i;
        byte m39207c;
        mo39131a(1L);
        int i2 = 0;
        while (true) {
            i = i2;
            int i3 = i + 1;
            if (!mo39123b(i3)) {
                break;
            }
            m39207c = this.f11629a.m39207c(i);
            if ((m39207c < 48 || m39207c > 57) && ((m39207c < 97 || m39207c > 102) && (m39207c < 65 || m39207c > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder("Expected leading [0-9a-fA-F] character but was 0x");
            String num = Integer.toString(m39207c, C18400a.m3998a(C18400a.m3998a(16)));
            C18524p.m3843b(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.f11629a.mo39108p();
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: q */
    public final C3208i mo39107q() {
        this.f11629a.mo39145a(this.f11631c);
        return this.f11629a.mo39107q();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) {
        C18524p.m3840d(sink, "sink");
        if (this.f11629a.f11572b == 0 && this.f11631c.read(this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f11629a.read(sink);
    }

    @Override // p092c.AbstractC3190ad
    public final long read(C3202f sink, long j) {
        C18524p.m3840d(sink, "sink");
        if (j >= 0) {
            if (!(true ^ this.f11630b)) {
                throw new IllegalStateException("closed".toString());
            }
            if (this.f11629a.f11572b == 0 && this.f11631c.read(this.f11629a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            return this.f11629a.read(sink, Math.min(j, this.f11629a.f11572b));
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: s */
    public final String mo39106s() {
        return mo39117f(Long.MAX_VALUE);
    }

    @Override // p092c.AbstractC3207h
    /* renamed from: t */
    public final byte[] mo39105t() {
        this.f11629a.mo39145a(this.f11631c);
        return this.f11629a.mo39105t();
    }

    @Override // p092c.AbstractC3190ad
    public final C3191ae timeout() {
        return this.f11631c.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f11631c + ')';
    }
}
