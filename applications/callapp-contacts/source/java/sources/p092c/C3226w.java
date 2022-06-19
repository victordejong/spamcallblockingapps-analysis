package p092c;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.appsflyer.internal.referrer.Payload;
import com.google.api.client.googleapis.notifications.C15291b;
import com.mopub.mobileads.VastIconXmlManager;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0001H\u0016J\b\u0010\u0011\u001a\u00020\u0001H\u0016J\b\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010\u0013\u001a\u00020\rH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001eH\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#H\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020$2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020!2\u0006\u0010\u001c\u001a\u00020$H\u0016J\u0010\u0010&\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u001bH\u0016J\u0010\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010*\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010-\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010/\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0010\u00102\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0018\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00105\u001a\u000206H\u0016J(\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001b2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0019H\u0016J \u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001bH\u0016J\u0010\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u001bH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006<"}, m4298d2 = {"Lokio/RealBufferedSink;", "Lokio/BufferedSink;", "sink", "Lokio/Sink;", "(Lokio/Sink;)V", "buffer", "Lokio/Buffer;", "getBuffer$annotations", "()V", "getBuffer", "()Lokio/Buffer;", "bufferField", "closed", "", EventConstants.CLOSE, "", "emit", "emitCompleteSegments", "flush", "isOpen", "outputStream", "Ljava/io/OutputStream;", "timeout", "Lokio/Timeout;", "toString", "", "write", "", Payload.SOURCE, "Ljava/nio/ByteBuffer;", "", VastIconXmlManager.OFFSET, "byteCount", "", "byteString", "Lokio/ByteString;", "Lokio/Source;", "writeAll", "writeByte", C15291b.f55271a, "writeDecimalLong", "v", "writeHexadecimalUnsignedLong", "writeInt", "i", "writeIntLe", "writeLong", "writeLongLe", "writeShort", "s", "writeShortLe", "writeString", "string", "charset", "Ljava/nio/charset/Charset;", "beginIndex", "endIndex", "writeUtf8", "writeUtf8CodePoint", "codePoint", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.w */
/* loaded from: classes-dex2jar.jar:c/w.class */
public final class C3226w implements AbstractC3206g {

    /* renamed from: a */
    public final C3202f f11626a = new C3202f();

    /* renamed from: b */
    public boolean f11627b;

    /* renamed from: c */
    public final AbstractC3188ab f11628c;

    public C3226w(AbstractC3188ab sink) {
        C18524p.m3840d(sink, "sink");
        this.f11628c = sink;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // p092c.AbstractC3206g
    /* renamed from: a */
    public final long mo39145a(AbstractC3190ad source) {
        C18524p.m3840d(source, "source");
        char c = 0;
        while (true) {
            long read = source.read(this.f11626a, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (read != -1) {
                c += read;
                mo39142c();
            } else {
                return c;
            }
        }
    }

    @Override // p092c.AbstractC3206g, p092c.AbstractC3207h
    /* renamed from: a */
    public final C3202f mo39133a() {
        return this.f11626a;
    }

    @Override // p092c.AbstractC3206g, p092c.AbstractC3207h
    /* renamed from: b */
    public final C3202f mo39124b() {
        return this.f11626a;
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: b */
    public final AbstractC3206g mo39144b(C3208i byteString) {
        C18524p.m3840d(byteString, "byteString");
        if (!this.f11627b) {
            this.f11626a.mo39144b(byteString);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: b */
    public final AbstractC3206g mo39143b(String string) {
        C18524p.m3840d(string, "string");
        if (!this.f11627b) {
            this.f11626a.mo39143b(string);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: c */
    public final AbstractC3206g mo39142c() {
        if (!this.f11627b) {
            long m39201h = this.f11626a.m39201h();
            if (m39201h > 0) {
                this.f11628c.write(this.f11626a, m39201h);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: c */
    public final AbstractC3206g mo39141c(int i) {
        if (!this.f11627b) {
            this.f11626a.mo39141c(i);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: c */
    public final AbstractC3206g mo39140c(byte[] source) {
        C18524p.m3840d(source, "source");
        if (!this.f11627b) {
            this.f11626a.mo39140c(source);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: c */
    public final AbstractC3206g mo39139c(byte[] source, int i, int i2) {
        C18524p.m3840d(source, "source");
        if (!this.f11627b) {
            this.f11626a.mo39139c(source, i, i2);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3188ab, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Throwable th;
        if (!this.f11627b) {
            Throwable th2 = null;
            try {
                if (this.f11626a.f11572b > 0) {
                    AbstractC3188ab abstractC3188ab = this.f11628c;
                    C3202f c3202f = this.f11626a;
                    abstractC3188ab.write(c3202f, c3202f.f11572b);
                    th2 = null;
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                this.f11628c.close();
                th = th2;
            } catch (Throwable th4) {
                th = th2;
                if (th2 == null) {
                    th = th4;
                }
            }
            this.f11627b = true;
            if (th != null) {
                throw th;
            }
        }
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: d */
    public final AbstractC3206g mo39138d() {
        if (!this.f11627b) {
            long j = this.f11626a.f11572b;
            if (j > 0) {
                this.f11628c.write(this.f11626a, j);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: e */
    public final AbstractC3206g mo39137e(int i) {
        if (!this.f11627b) {
            this.f11626a.mo39137e(i);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g, p092c.AbstractC3188ab, java.io.Flushable
    public final void flush() {
        if (!this.f11627b) {
            if (this.f11626a.f11572b > 0) {
                AbstractC3188ab abstractC3188ab = this.f11628c;
                C3202f c3202f = this.f11626a;
                abstractC3188ab.write(c3202f, c3202f.f11572b);
            }
            this.f11628c.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: g */
    public final AbstractC3206g mo39136g(int i) {
        if (!this.f11627b) {
            this.f11626a.mo39136g(i);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f11627b;
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: k */
    public final AbstractC3206g mo39135k(long j) {
        if (!this.f11627b) {
            this.f11626a.mo39135k(j);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3206g
    /* renamed from: m */
    public final AbstractC3206g mo39134m(long j) {
        if (!this.f11627b) {
            this.f11626a.mo39134m(j);
            return mo39142c();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3188ab
    public final C3191ae timeout() {
        return this.f11628c.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f11628c + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) {
        C18524p.m3840d(source, "source");
        if (!this.f11627b) {
            int write = this.f11626a.write(source);
            mo39142c();
            return write;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // p092c.AbstractC3188ab
    public final void write(C3202f source, long j) {
        C18524p.m3840d(source, "source");
        if (!this.f11627b) {
            this.f11626a.write(source, j);
            mo39142c();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }
}
