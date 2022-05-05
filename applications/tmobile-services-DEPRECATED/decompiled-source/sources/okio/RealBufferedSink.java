package okio;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010O\u001a\u00020N¢\u0006\u0004\bQ\u0010RJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\u0007J\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001b\u0010\u001eJ'\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010!J\u001f\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\"H\u0016¢\u0006\u0004\b\u001b\u0010#J\u0017\u0010\u001b\u001a\u00020\u00012\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b\u001b\u0010&J'\u0010\u001b\u001a\u00020\u00012\u0006\u0010%\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010'J\u001f\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020(2\u0006\u0010 \u001a\u00020\"H\u0016¢\u0006\u0004\b\u001b\u0010)J\u0017\u0010*\u001a\u00020\"2\u0006\u0010\u0019\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001aH\u0016¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\"H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\"H\u0016¢\u0006\u0004\b2\u00101J\u0017\u00104\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u001aH\u0016¢\u0006\u0004\b4\u0010.J\u0017\u00105\u001a\u00020\u00012\u0006\u00103\u001a\u00020\u001aH\u0016¢\u0006\u0004\b5\u0010.J\u0017\u00106\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\"H\u0016¢\u0006\u0004\b6\u00101J\u0017\u00107\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\"H\u0016¢\u0006\u0004\b7\u00101J\u0017\u00109\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u001aH\u0016¢\u0006\u0004\b9\u0010.J\u0017\u0010:\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u001aH\u0016¢\u0006\u0004\b:\u0010.J\u001f\u0010>\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u00152\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010?J/\u0010>\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\u001a2\u0006\u0010A\u001a\u00020\u001a2\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010BJ\u0017\u0010C\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u0015H\u0016¢\u0006\u0004\bC\u0010DJ'\u0010C\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\u001a2\u0006\u0010A\u001a\u00020\u001aH\u0016¢\u0006\u0004\bC\u0010EJ\u0017\u0010G\u001a\u00020\u00012\u0006\u0010F\u001a\u00020\u001aH\u0016¢\u0006\u0004\bG\u0010.R\u001d\u0010\u0003\u001a\u00020\u00028Ö\u0002@\u0016X\u0096\u0004¢\u0006\f\u0012\u0004\bI\u0010\u0007\u001a\u0004\bH\u0010\u0004R\u0016\u0010J\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010L\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010O\u001a\u00020N8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\bO\u0010P¨\u0006S"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/BufferedSink;", "Lokio/Buffer;", "buffer", "()Lokio/Buffer;", "", "close", "()V", "emit", "()Lokio/BufferedSink;", "emitCompleteSegments", "flush", "", "isOpen", "()Z", "Ljava/io/OutputStream;", "outputStream", "()Ljava/io/OutputStream;", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "toString", "()Ljava/lang/String;", "Ljava/nio/ByteBuffer;", "source", "", "write", "(Ljava/nio/ByteBuffer;)I", "", "([B)Lokio/BufferedSink;", "offset", "byteCount", "([BII)Lokio/BufferedSink;", "", "(Lokio/Buffer;J)V", "Lokio/ByteString;", "byteString", "(Lokio/ByteString;)Lokio/BufferedSink;", "(Lokio/ByteString;II)Lokio/BufferedSink;", "Lokio/Source;", "(Lokio/Source;J)Lokio/BufferedSink;", "writeAll", "(Lokio/Source;)J", "b", "writeByte", "(I)Lokio/BufferedSink;", "v", "writeDecimalLong", "(J)Lokio/BufferedSink;", "writeHexadecimalUnsignedLong", "i", "writeInt", "writeIntLe", "writeLong", "writeLongLe", "s", "writeShort", "writeShortLe", "string", "Ljava/nio/charset/Charset;", "charset", "writeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;", "beginIndex", "endIndex", "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;", "writeUtf8", "(Ljava/lang/String;)Lokio/BufferedSink;", "(Ljava/lang/String;II)Lokio/BufferedSink;", "codePoint", "writeUtf8CodePoint", "getBuffer", "getBuffer$annotations", "bufferField", "Lokio/Buffer;", "closed", "Z", "Lokio/Sink;", "sink", "Lokio/Sink;", "<init>", "(Lokio/Sink;)V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/RealBufferedSink.class */
public final class RealBufferedSink implements BufferedSink {
    @JvmField
    @NotNull

    /* renamed from: f */
    public final Buffer f24188f = new Buffer();
    @JvmField

    /* renamed from: g */
    public boolean f24189g;
    @JvmField
    @NotNull

    /* renamed from: h */
    public final Sink f24190h;

    public RealBufferedSink(@NotNull Sink sink) {
        Intrinsics.m1830e(sink, "sink");
        this.f24190h = sink;
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: A */
    public BufferedSink mo100A(int i) {
        if (!this.f24189g) {
            this.f24188f.m222D0(i);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: F */
    public BufferedSink mo99F() {
        if (!this.f24189g) {
            long d = this.f24188f.m200d();
            if (d > 0) {
                this.f24190h.write(this.f24188f, d);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: M */
    public BufferedSink mo98M(@NotNull String string) {
        Intrinsics.m1830e(string, "string");
        if (!this.f24189g) {
            this.f24188f.m210M0(string);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: Q */
    public BufferedSink mo97Q(@NotNull byte[] source, int i, int i2) {
        Intrinsics.m1830e(source, "source");
        if (!this.f24189g) {
            this.f24188f.m223C0(source, i, i2);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: R */
    public BufferedSink mo96R(@NotNull String string, int i, int i2) {
        Intrinsics.m1830e(string, "string");
        if (!this.f24189g) {
            this.f24188f.m208N0(string, i, i2);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    /* renamed from: S */
    public long mo95S(@NotNull Source source) {
        Intrinsics.m1830e(source, "source");
        long j = 0;
        while (true) {
            long read = source.read(this.f24188f, 8192);
            if (read == -1) {
                return j;
            }
            j += read;
            mo99F();
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: T */
    public BufferedSink mo94T(long j) {
        if (!this.f24189g) {
            this.f24188f.m220F0(j);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    /* renamed from: a */
    public BufferedSink m93a(int i) {
        if (!this.f24189g) {
            this.f24188f.m218H0(i);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: c */
    public Buffer mo76c() {
        return this.f24188f;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Throwable th;
        if (!this.f24189g) {
            Throwable th2 = null;
            try {
                if (this.f24188f.m188v0() > 0) {
                    this.f24190h.write(this.f24188f, this.f24188f.m188v0());
                    th2 = null;
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                this.f24190h.close();
                th = th2;
            } catch (Throwable th4) {
                th = th4;
                th = th2;
                if (th2 == null) {
                }
            }
            this.f24189g = true;
            if (th != null) {
                throw th;
            }
        }
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (!this.f24189g) {
            if (this.f24188f.m188v0() > 0) {
                Sink sink = this.f24190h;
                Buffer buffer = this.f24188f;
                sink.write(buffer, buffer.m188v0());
            }
            this.f24190h.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: g0 */
    public BufferedSink mo92g0(@NotNull byte[] source) {
        Intrinsics.m1830e(source, "source");
        if (!this.f24189g) {
            this.f24188f.m224B0(source);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: h0 */
    public BufferedSink mo91h0(@NotNull ByteString byteString) {
        Intrinsics.m1830e(byteString, "byteString");
        if (!this.f24189g) {
            this.f24188f.m184z0(byteString);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f24189g;
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: q0 */
    public BufferedSink mo90q0(long j) {
        if (!this.f24189g) {
            this.f24188f.m221E0(j);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: r */
    public BufferedSink mo89r() {
        if (!this.f24189g) {
            long v0 = this.f24188f.m188v0();
            if (v0 > 0) {
                this.f24190h.write(this.f24188f, v0);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: s */
    public BufferedSink mo88s(int i) {
        if (!this.f24189g) {
            this.f24188f.m215J0(i);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f24190h.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.f24190h + ')';
    }

    @Override // okio.BufferedSink
    @NotNull
    /* renamed from: u */
    public BufferedSink mo87u(int i) {
        if (!this.f24189g) {
            this.f24188f.m219G0(i);
            mo99F();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) {
        Intrinsics.m1830e(source, "source");
        if (!this.f24189g) {
            int write = this.f24188f.write(source);
            mo99F();
            return write;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j) {
        Intrinsics.m1830e(source, "source");
        if (!this.f24189g) {
            this.f24188f.write(source, j);
            mo99F();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }
}
