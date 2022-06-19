package p092c;

import com.appsflyer.internal.referrer.Payload;
import io.objectbox.model.PropertyFlags;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0017\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0007J\b\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0016\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\u000bJ\b\u0010\u0015\u001a\u00020\rH\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0018"}, m4298d2 = {"Lokio/InflaterSource;", "Lokio/Source;", Payload.SOURCE, "inflater", "Ljava/util/zip/Inflater;", "(Lokio/Source;Ljava/util/zip/Inflater;)V", "Lokio/BufferedSource;", "(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V", "bufferBytesHeldByInflater", "", "closed", "", EventConstants.CLOSE, "", "read", "", "sink", "Lokio/Buffer;", "byteCount", "readOrInflate", "refill", "releaseBytesAfterInflate", "timeout", "Lokio/Timeout;", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.o */
/* loaded from: classes-dex2jar.jar:c/o.class */
public final class C3215o implements AbstractC3190ad {

    /* renamed from: a */
    private int f11596a;

    /* renamed from: b */
    private boolean f11597b;

    /* renamed from: c */
    private final AbstractC3207h f11598c;

    /* renamed from: d */
    private final Inflater f11599d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3215o(AbstractC3190ad source, Inflater inflater) {
        this(C3218r.m39150a(source), inflater);
        C18524p.m3840d(source, "source");
        C18524p.m3840d(inflater, "inflater");
    }

    public C3215o(AbstractC3207h source, Inflater inflater) {
        C18524p.m3840d(source, "source");
        C18524p.m3840d(inflater, "inflater");
        this.f11598c = source;
        this.f11599d = inflater;
    }

    /* renamed from: a */
    public final long m39162a(C3202f sink, long j) throws IOException {
        C18524p.m3840d(sink, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (!(!this.f11597b)) {
                throw new IllegalStateException("closed".toString());
            }
            if (i == 0) {
                return 0L;
            }
            try {
                C3229y m39200h = sink.m39200h(1);
                int min = (int) Math.min(j, PropertyFlags.UNSIGNED - m39200h.f11636c);
                if (this.f11599d.needsInput() && !this.f11598c.mo39119e()) {
                    C3229y c3229y = this.f11598c.mo39124b().f11571a;
                    C18524p.m3851a(c3229y);
                    this.f11596a = c3229y.f11636c - c3229y.f11635b;
                    this.f11599d.setInput(c3229y.f11634a, c3229y.f11635b, this.f11596a);
                }
                int inflate = this.f11599d.inflate(m39200h.f11634a, m39200h.f11636c, min);
                int i2 = this.f11596a;
                if (i2 != 0) {
                    int remaining = i2 - this.f11599d.getRemaining();
                    this.f11596a -= remaining;
                    this.f11598c.mo39114h(remaining);
                }
                if (inflate > 0) {
                    m39200h.f11636c += inflate;
                    long j2 = inflate;
                    sink.f11572b += j2;
                    return j2;
                } else if (m39200h.f11635b != m39200h.f11636c) {
                    return 0L;
                } else {
                    sink.f11571a = m39200h.m39100c();
                    C3231z.m39098a(m39200h);
                    return 0L;
                }
            } catch (DataFormatException e) {
                throw new IOException(e);
            }
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)).toString());
    }

    @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        if (this.f11597b) {
            return;
        }
        this.f11599d.end();
        this.f11597b = true;
        this.f11598c.close();
    }

    @Override // p092c.AbstractC3190ad
    public final long read(C3202f sink, long j) throws IOException {
        C18524p.m3840d(sink, "sink");
        do {
            long m39162a = m39162a(sink, j);
            if (m39162a > 0) {
                return m39162a;
            }
            if (this.f11599d.finished() || this.f11599d.needsDictionary()) {
                return -1L;
            }
        } while (!this.f11598c.mo39119e());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // p092c.AbstractC3190ad
    public final C3191ae timeout() {
        return this.f11598c.timeout();
    }
}
