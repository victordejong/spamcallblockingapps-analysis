package c;

import android.support.v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.b;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0012H\u0016J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0012H\u0016J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\rH\u0016J\b\u0010\u001e\u001a\u00020\u0001H\u0016J\u0018\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J(\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020'H\u0016J \u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020'2\u0006\u0010 \u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0016J\u0018\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010(\u001a\u00020\u00122\u0006\u0010%\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020\u0014H\u0016J\b\u0010+\u001a\u00020'H\u0016J\u0010\u0010+\u001a\u00020'2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0018H\u0016J\u0010\u0010,\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010-\u001a\u00020\u0012H\u0016J\u0010\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020'H\u0016J\u0018\u0010.\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010/\u001a\u00020\u0012H\u0016J\b\u00100\u001a\u00020\"H\u0016J\b\u00101\u001a\u00020\"H\u0016J\b\u00102\u001a\u00020\u0012H\u0016J\b\u00103\u001a\u00020\u0012H\u0016J\b\u00104\u001a\u000205H\u0016J\b\u00106\u001a\u000205H\u0016J\u0010\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u0018\u00107\u001a\u0002082\u0006\u0010#\u001a\u00020\u00122\u0006\u00109\u001a\u00020:H\u0016J\b\u0010;\u001a\u000208H\u0016J\u0010\u0010;\u001a\u0002082\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010<\u001a\u00020\"H\u0016J\n\u0010=\u001a\u0004\u0018\u000108H\u0016J\b\u0010>\u001a\u000208H\u0016J\u0010\u0010>\u001a\u0002082\u0006\u0010?\u001a\u00020\u0012H\u0016J\u0010\u0010@\u001a\u00020\r2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010A\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010B\u001a\u00020\"2\u0006\u0010C\u001a\u00020DH\u0016J\u0010\u0010E\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0012H\u0016J\b\u0010F\u001a\u00020GH\u0016J\b\u0010H\u001a\u000208H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006I"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", Payload.SOURCE, "Lokio/Source;", "(Lokio/Source;)V", "buffer", "Lokio/Buffer;", "getBuffer$annotations", "()V", "getBuffer", "()Lokio/Buffer;", "bufferField", "closed", "", EventConstants.CLOSE, "", "exhausted", "indexOf", "", b.f31754a, "", "fromIndex", "toIndex", "bytes", "Lokio/ByteString;", "indexOfElement", "targetBytes", "inputStream", "Ljava/io/InputStream;", "isOpen", "peek", "rangeEquals", VastIconXmlManager.OFFSET, "bytesOffset", "", "byteCount", "read", "sink", "Ljava/nio/ByteBuffer;", "", "readAll", "Lokio/Sink;", "readByte", "readByteArray", "readByteString", "readDecimalLong", "readFully", "readHexadecimalUnsignedLong", "readInt", "readIntLe", "readLong", "readLongLe", "readShort", "", "readShortLe", "readString", "", "charset", "Ljava/nio/charset/Charset;", "readUtf8", "readUtf8CodePoint", "readUtf8Line", "readUtf8LineStrict", "limit", "request", "require", "select", "options", "Lokio/Options;", EventConstants.SKIP, "timeout", "Lokio/Timeout;", "toString", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/x.class */
public final class x implements h {

    /* renamed from: a  reason: collision with root package name */
    public final f f6335a = new f();

    /* renamed from: b  reason: collision with root package name */
    public boolean f6336b;

    /* renamed from: c  reason: collision with root package name */
    public final ad f6337c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��'\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000e\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"okio/RealBufferedSource$inputStream$1", "Ljava/io/InputStream;", "available", "", EventConstants.CLOSE, "", "read", "data", "", VastIconXmlManager.OFFSET, "byteCount", "toString", "", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/x$a.class */
    public static final class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public final int available() {
            if (!x.this.f6336b) {
                return (int) Math.min(x.this.f6335a.f6289b, 2147483647L);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            x.this.close();
        }

        @Override // java.io.InputStream
        public final int read() {
            if (x.this.f6336b) {
                throw new IOException("closed");
            } else if (x.this.f6335a.f6289b == 0 && x.this.f6337c.read(x.this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1;
            } else {
                return x.this.f6335a.i() & 255;
            }
        }

        @Override // java.io.InputStream
        public final int read(byte[] data, int i, int i2) {
            p.d(data, "data");
            if (!x.this.f6336b) {
                c.a(data.length, i, i2);
                if (x.this.f6335a.f6289b == 0 && x.this.f6337c.read(x.this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
                return x.this.f6335a.a(data, i, i2);
            }
            throw new IOException("closed");
        }

        public final String toString() {
            return x.this + ".inputStream()";
        }
    }

    public x(ad source) {
        p.d(source, "source");
        this.f6337c = source;
    }

    private long a(byte b2, long j) {
        boolean z = true;
        if (!this.f6336b) {
            long j2 = 0;
            if (j < 0) {
                z = false;
            }
            if (z) {
                while (j2 < j) {
                    long a2 = this.f6335a.a(b2, j2, j);
                    if (a2 != -1) {
                        return a2;
                    }
                    long j3 = this.f6335a.f6289b;
                    if (j3 >= j || this.f6337c.read(this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                        return -1L;
                    }
                    j2 = Math.max(j2, j3);
                }
                return -1L;
            }
            throw new IllegalArgumentException(("fromIndex=0 toIndex=" + j).toString());
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.h
    public final int a(s options) {
        p.d(options, "options");
        if (!this.f6336b) {
            do {
                int a2 = c.a.a.a(this.f6335a, options, true);
                if (a2 != -2) {
                    if (a2 == -1) {
                        return -1;
                    }
                    this.f6335a.h(options.f6316b[a2].f());
                    return a2;
                }
            } while (this.f6337c.read(this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // c.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(c.ab r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "sink"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = 0
            r7 = r0
        L_0x0008:
            r0 = r5
            c.ad r0 = r0.f6337c
            r1 = r5
            c.f r1 = r1.f6335a
            r2 = 8192(0x2000, double:4.0474E-320)
            long r0 = r0.read(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0043
            r0 = r5
            c.f r0 = r0.f6335a
            long r0 = r0.h()
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0008
            r0 = r7
            r1 = r9
            long r0 = r0 + r1
            r7 = r0
            r0 = r6
            r1 = r5
            c.f r1 = r1.f6335a
            r2 = r9
            r0.write(r1, r2)
            goto L_0x0008
        L_0x0043:
            r0 = r7
            r9 = r0
            r0 = r5
            c.f r0 = r0.f6335a
            long r0 = r0.f6289b
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0070
            r0 = r7
            r1 = r5
            c.f r1 = r1.f6335a
            long r1 = r1.f6289b
            long r0 = r0 + r1
            r9 = r0
            r0 = r5
            c.f r0 = r0.f6335a
            r11 = r0
            r0 = r6
            r1 = r11
            r2 = r11
            long r2 = r2.f6289b
            r0.write(r1, r2)
        L_0x0070:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.x.a(c.ab):long");
    }

    @Override // c.h
    public final f a() {
        return this.f6335a;
    }

    @Override // c.h
    public final String a(Charset charset) {
        p.d(charset, "charset");
        this.f6335a.a(this.f6337c);
        return this.f6335a.a(charset);
    }

    @Override // c.h
    public final void a(long j) {
        if (!b(j)) {
            throw new EOFException();
        }
    }

    @Override // c.h
    public final void a(f sink, long j) {
        p.d(sink, "sink");
        try {
            a(j);
            this.f6335a.a(sink, j);
        } catch (EOFException e) {
            sink.a((ad) this.f6335a);
            throw e;
        }
    }

    @Override // c.h
    public final void a(byte[] sink) {
        p.d(sink, "sink");
        try {
            a(sink.length);
            this.f6335a.a(sink);
        } catch (EOFException e) {
            int i = 0;
            while (this.f6335a.f6289b > 0) {
                f fVar = this.f6335a;
                int a2 = fVar.a(sink, i, (int) fVar.f6289b);
                if (a2 != -1) {
                    i += a2;
                } else {
                    throw new AssertionError();
                }
            }
            throw e;
        }
    }

    @Override // c.h
    public final boolean a(long j, i bytes) {
        p.d(bytes, "bytes");
        int f = bytes.f();
        p.d(bytes, "bytes");
        if (!(!this.f6336b)) {
            throw new IllegalStateException("closed".toString());
        } else if (j < 0 || f < 0 || bytes.f() - 0 < f) {
            return false;
        } else {
            for (int i = 0; i < f; i++) {
                long j2 = i + j;
                if (!(b(1 + j2) && this.f6335a.c(j2) == bytes.b(i + 0))) {
                    return false;
                }
            }
            return true;
        }
    }

    @Override // c.h
    public final f b() {
        return this.f6335a;
    }

    @Override // c.h
    public final boolean b(long j) {
        if (!(j >= 0)) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        } else if (!this.f6336b) {
            while (this.f6335a.f6289b < j) {
                if (this.f6337c.read(this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return false;
                }
            }
            return true;
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    public final int c() {
        a(4L);
        return this.f6335a.n();
    }

    @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.f6336b) {
            this.f6336b = true;
            this.f6337c.close();
            this.f6335a.u();
        }
    }

    public final long d() {
        return a((byte) 0, Long.MAX_VALUE);
    }

    @Override // c.h
    public final i d(long j) {
        a(j);
        return this.f6335a.d(j);
    }

    @Override // c.h
    public final boolean e() {
        if (!this.f6336b) {
            return this.f6335a.e() && this.f6337c.read(this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.h
    public final h f() {
        return r.a(new u(this));
    }

    @Override // c.h
    public final String f(long j) {
        if (j >= 0) {
            long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
            long a2 = a((byte) 10, j2);
            if (a2 != -1) {
                return c.a.a.a(this.f6335a, a2);
            }
            if (j2 < Long.MAX_VALUE && b(j2) && this.f6335a.c(j2 - 1) == 13 && b(1 + j2) && this.f6335a.c(j2) == 10) {
                return c.a.a.a(this.f6335a, j2);
            }
            f fVar = new f();
            f fVar2 = this.f6335a;
            fVar2.a(fVar, 0L, Math.min(32L, fVar2.f6289b));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f6335a.f6289b, j) + " content=" + fVar.q().d() + "…");
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)).toString());
    }

    @Override // c.h
    public final InputStream g() {
        return new a();
    }

    @Override // c.h
    public final byte[] g(long j) {
        a(j);
        return this.f6335a.g(j);
    }

    @Override // c.h
    public final void h(long j) {
        if (!this.f6336b) {
            while (j > 0) {
                if (this.f6335a.f6289b == 0 && this.f6337c.read(this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.f6335a.f6289b);
                this.f6335a.h(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.h
    public final byte i() {
        a(1L);
        return this.f6335a.i();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f6336b;
    }

    @Override // c.h
    public final short j() {
        a(2L);
        return this.f6335a.j();
    }

    @Override // c.h
    public final int k() {
        a(4L);
        return this.f6335a.k();
    }

    @Override // c.h
    public final long l() {
        a(8L);
        return this.f6335a.l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // c.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long o() {
        /*
            r5 = this;
            r0 = r5
            r1 = 1
            r0.a(r1)
            r0 = 0
            r6 = r0
        L_0x0007:
            r0 = r6
            r1 = 1
            long r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = r8
            boolean r0 = r0.b(r1)
            if (r0 == 0) goto L_0x0087
            r0 = r5
            c.f r0 = r0.f6335a
            r1 = r6
            byte r0 = r0.c(r1)
            r10 = r0
            r0 = r10
            r1 = 48
            if (r0 < r1) goto L_0x002b
            r0 = r10
            r1 = 57
            if (r0 <= r1) goto L_0x003f
        L_0x002b:
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0044
            r0 = r10
            r1 = 45
            if (r0 == r1) goto L_0x003f
            goto L_0x0044
        L_0x003f:
            r0 = r8
            r6 = r0
            goto L_0x0007
        L_0x0044:
            r0 = r11
            if (r0 == 0) goto L_0x004c
            goto L_0x0087
        L_0x004c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Expected leading [0-9] or '-' character but was 0x"
            r1.<init>(r2)
            r12 = r0
            r0 = r10
            r1 = 16
            int r1 = kotlin.h.a.a(r1)
            int r1 = kotlin.h.a.a(r1)
            java.lang.String r0 = java.lang.Integer.toString(r0, r1)
            r13 = r0
            r0 = r13
            java.lang.String r1 = "java.lang.Integer.toStri…(this, checkRadix(radix))"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r12
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r1 = r0
            r2 = r12
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L_0x0087:
            r0 = r5
            c.f r0 = r0.f6335a
            long r0 = r0.o()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.x.o():long");
    }

    @Override // c.h
    public final long p() {
        byte c2;
        a(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!b(i2)) {
                break;
            }
            c2 = this.f6335a.c(i);
            if ((c2 < 48 || c2 > 57) && ((c2 < 97 || c2 > 102) && (c2 < 65 || c2 > 70))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder("Expected leading [0-9a-fA-F] character but was 0x");
            String num = Integer.toString(c2, kotlin.h.a.a(kotlin.h.a.a(16)));
            p.b(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.f6335a.p();
    }

    @Override // c.h
    public final i q() {
        this.f6335a.a(this.f6337c);
        return this.f6335a.q();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) {
        p.d(sink, "sink");
        if (this.f6335a.f6289b == 0 && this.f6337c.read(this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.f6335a.read(sink);
    }

    @Override // c.ad
    public final long read(f sink, long j) {
        p.d(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        } else if (!(true ^ this.f6336b)) {
            throw new IllegalStateException("closed".toString());
        } else if (this.f6335a.f6289b == 0 && this.f6337c.read(this.f6335a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        } else {
            return this.f6335a.read(sink, Math.min(j, this.f6335a.f6289b));
        }
    }

    @Override // c.h
    public final String s() {
        return f(Long.MAX_VALUE);
    }

    @Override // c.h
    public final byte[] t() {
        this.f6335a.a(this.f6337c);
        return this.f6335a.t();
    }

    @Override // c.ad
    public final ae timeout() {
        return this.f6337c.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f6337c + ')';
    }
}
