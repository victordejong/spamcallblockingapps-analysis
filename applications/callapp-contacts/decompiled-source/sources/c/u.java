package c;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, d2 = {"Lokio/PeekSource;", "Lokio/Source;", "upstream", "Lokio/BufferedSource;", "(Lokio/BufferedSource;)V", "buffer", "Lokio/Buffer;", "closed", "", "expectedPos", "", "expectedSegment", "Lokio/Segment;", "pos", "", EventConstants.CLOSE, "", "read", "sink", "byteCount", "timeout", "Lokio/Timeout;", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/u.class */
public final class u implements ad {

    /* renamed from: a  reason: collision with root package name */
    private final f f6320a;

    /* renamed from: b  reason: collision with root package name */
    private y f6321b;

    /* renamed from: c  reason: collision with root package name */
    private int f6322c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6323d;
    private long e;
    private final h f;

    public u(h upstream) {
        p.d(upstream, "upstream");
        this.f = upstream;
        f b2 = upstream.b();
        this.f6320a = b2;
        this.f6321b = b2.f6288a;
        y yVar = b2.f6288a;
        this.f6322c = yVar != null ? yVar.f6340b : -1;
    }

    @Override // c.ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f6323d = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
        if (r0 == r0.f6340b) goto L_0x0067;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ea  */
    @Override // c.ad
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long read(c.f r8, long r9) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.u.read(c.f, long):long");
    }

    @Override // c.ad
    public final ae timeout() {
        return this.f.timeout();
    }
}
