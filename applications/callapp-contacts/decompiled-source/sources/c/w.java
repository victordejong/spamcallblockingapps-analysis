package c;

import android.support.v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.b;
import com.mopub.mobileads.VastIconXmlManager;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0001H\u0016J\b\u0010\u0011\u001a\u00020\u0001H\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010\u0013\u001a\u00020\rH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001eH\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#H\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020$2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020!2\u0006\u0010\u001c\u001a\u00020$H\u0016J\u0010\u0010&\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u001bH\u0016J\u0010\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010*\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010-\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010/\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0010\u00102\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0018\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00105\u001a\u000206H\u0016J(\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001b2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0019H\u0016J \u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001bH\u0016J\u0010\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u001bH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006<"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/BufferedSink;", "sink", "Lokio/Sink;", "(Lokio/Sink;)V", "buffer", "Lokio/Buffer;", "getBuffer$annotations", "()V", "getBuffer", "()Lokio/Buffer;", "bufferField", "closed", "", EventConstants.CLOSE, "", "emit", "emitCompleteSegments", "flush", "isOpen", "outputStream", "Ljava/io/OutputStream;", "timeout", "Lokio/Timeout;", "toString", "", "write", "", Payload.SOURCE, "Ljava/nio/ByteBuffer;", "", VastIconXmlManager.OFFSET, "byteCount", "", "byteString", "Lokio/ByteString;", "Lokio/Source;", "writeAll", "writeByte", b.f31754a, "writeDecimalLong", "v", "writeHexadecimalUnsignedLong", "writeInt", "i", "writeIntLe", "writeLong", "writeLongLe", "writeShort", "s", "writeShortLe", "writeString", "string", "charset", "Ljava/nio/charset/Charset;", "beginIndex", "endIndex", "writeUtf8", "writeUtf8CodePoint", "codePoint", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/w.class */
public final class w implements g {

    /* renamed from: a  reason: collision with root package name */
    public final f f6332a = new f();

    /* renamed from: b  reason: collision with root package name */
    public boolean f6333b;

    /* renamed from: c  reason: collision with root package name */
    public final ab f6334c;

    public w(ab sink) {
        p.d(sink, "sink");
        this.f6334c = sink;
    }

    @Override // c.g
    public final long a(ad source) {
        p.d(source, "source");
        long j = 0;
        while (true) {
            long read = source.read(this.f6332a, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read == -1) {
                return j;
            }
            j += read;
            c();
        }
    }

    @Override // c.g, c.h
    public final f a() {
        return this.f6332a;
    }

    @Override // c.g, c.h
    public final f b() {
        return this.f6332a;
    }

    @Override // c.g
    public final g b(i byteString) {
        p.d(byteString, "byteString");
        if (!this.f6333b) {
            this.f6332a.b(byteString);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g
    public final g b(String string) {
        p.d(string, "string");
        if (!this.f6333b) {
            this.f6332a.b(string);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g
    public final g c() {
        if (!this.f6333b) {
            long h = this.f6332a.h();
            if (h > 0) {
                this.f6334c.write(this.f6332a, h);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g
    public final g c(int i) {
        if (!this.f6333b) {
            this.f6332a.c(i);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g
    public final g c(byte[] source) {
        p.d(source, "source");
        if (!this.f6333b) {
            this.f6332a.c(source);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g
    public final g c(byte[] source, int i, int i2) {
        p.d(source, "source");
        if (!this.f6333b) {
            this.f6332a.c(source, i, i2);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Throwable th;
        if (!this.f6333b) {
            Throwable th2 = null;
            try {
                if (this.f6332a.f6289b > 0) {
                    ab abVar = this.f6334c;
                    f fVar = this.f6332a;
                    abVar.write(fVar, fVar.f6289b);
                    th2 = null;
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                this.f6334c.close();
                th = th2;
            } catch (Throwable th4) {
                th = th4;
                th = th2;
                if (th2 == null) {
                }
            }
            this.f6333b = true;
            if (th != null) {
                throw th;
            }
        }
    }

    @Override // c.g
    public final g d() {
        if (!this.f6333b) {
            long j = this.f6332a.f6289b;
            if (j > 0) {
                this.f6334c.write(this.f6332a, j);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g
    public final g e(int i) {
        if (!this.f6333b) {
            this.f6332a.e(i);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g, c.ab, java.io.Flushable
    public final void flush() {
        if (!this.f6333b) {
            if (this.f6332a.f6289b > 0) {
                ab abVar = this.f6334c;
                f fVar = this.f6332a;
                abVar.write(fVar, fVar.f6289b);
            }
            this.f6334c.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g
    public final g g(int i) {
        if (!this.f6333b) {
            this.f6332a.g(i);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f6333b;
    }

    @Override // c.g
    public final g k(long j) {
        if (!this.f6333b) {
            this.f6332a.k(j);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.g
    public final g m(long j) {
        if (!this.f6333b) {
            this.f6332a.m(j);
            return c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.ab
    public final ae timeout() {
        return this.f6334c.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f6334c + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) {
        p.d(source, "source");
        if (!this.f6333b) {
            int write = this.f6332a.write(source);
            c();
            return write;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // c.ab
    public final void write(f source, long j) {
        p.d(source, "source");
        if (!this.f6333b) {
            this.f6332a.write(source, j);
            c();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }
}
