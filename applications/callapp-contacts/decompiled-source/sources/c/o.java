package c;

import com.appsflyer.internal.referrer.Payload;
import io.objectbox.model.PropertyFlags;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\u000bJ\b\u0010\u0015\u001a\u00020\rH\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"Lokio/InflaterSource;", "Lokio/Source;", Payload.SOURCE, "inflater", "Ljava/util/zip/Inflater;", "(Lokio/Source;Ljava/util/zip/Inflater;)V", "Lokio/BufferedSource;", "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V", "bufferBytesHeldByInflater", "", "closed", "", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "readOrInflate", "refill", "releaseBytesAfterInflate", "timeout", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/o.class */
public final class o implements ad {

    /* renamed from: a  reason: collision with root package name */
    private int f6308a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6309b;

    /* renamed from: c  reason: collision with root package name */
    private final h f6310c;

    /* renamed from: d  reason: collision with root package name */
    private final Inflater f6311d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o(ad source, Inflater inflater) {
        this(r.a(source), inflater);
        p.d(source, "source");
        p.d(inflater, "inflater");
    }

    public o(h source, Inflater inflater) {
        p.d(source, "source");
        p.d(inflater, "inflater");
        this.f6310c = source;
        this.f6311d = inflater;
    }

    public final long a(f sink, long j) throws IOException {
        p.d(sink, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0)) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
        } else if (!(!this.f6309b)) {
            throw new IllegalStateException("closed".toString());
        } else if (i == 0) {
            return 0L;
        } else {
            try {
                y h = sink.h(1);
                int min = (int) Math.min(j, PropertyFlags.UNSIGNED - h.f6341c);
                if (this.f6311d.needsInput() && !this.f6310c.e()) {
                    y yVar = this.f6310c.b().f6288a;
                    p.a(yVar);
                    this.f6308a = yVar.f6341c - yVar.f6340b;
                    this.f6311d.setInput(yVar.f6339a, yVar.f6340b, this.f6308a);
                }
                int inflate = this.f6311d.inflate(h.f6339a, h.f6341c, min);
                int i2 = this.f6308a;
                if (i2 != 0) {
                    int remaining = i2 - this.f6311d.getRemaining();
                    this.f6308a -= remaining;
                    this.f6310c.h(remaining);
                }
                if (inflate > 0) {
                    h.f6341c += inflate;
                    long j2 = inflate;
                    sink.f6289b += j2;
                    return j2;
                } else if (h.f6340b != h.f6341c) {
                    return 0L;
                } else {
                    sink.f6288a = h.c();
                    z.a(h);
                    return 0L;
                }
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
    }

    @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (!this.f6309b) {
            this.f6311d.end();
            this.f6309b = true;
            this.f6310c.close();
        }
    }

    @Override // c.ad
    public final long read(f sink, long j) throws IOException {
        p.d(sink, "sink");
        do {
            long a2 = a(sink, j);
            if (a2 > 0) {
                return a2;
            }
            if (this.f6311d.finished() || this.f6311d.needsDictionary()) {
                return -1L;
            }
        } while (!this.f6310c.e());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // c.ad
    public final ae timeout() {
        return this.f6310c.timeout();
    }
}
