package p092c;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0016"}, m4298d2 = {"Lokio/PeekSource;", "Lokio/Source;", "upstream", "Lokio/BufferedSource;", "(Lokio/BufferedSource;)V", "buffer", "Lokio/Buffer;", "closed", "", "expectedPos", "", "expectedSegment", "Lokio/Segment;", "pos", "", EventConstants.CLOSE, "", "read", "sink", "byteCount", "timeout", "Lokio/Timeout;", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.u */
/* loaded from: classes-dex2jar.jar:c/u.class */
public final class C3222u implements AbstractC3190ad {

    /* renamed from: a */
    private final C3202f f11608a;

    /* renamed from: b */
    private C3229y f11609b;

    /* renamed from: c */
    private int f11610c;

    /* renamed from: d */
    private boolean f11611d;

    /* renamed from: e */
    private long f11612e;

    /* renamed from: f */
    private final AbstractC3207h f11613f;

    public C3222u(AbstractC3207h upstream) {
        C18524p.m3840d(upstream, "upstream");
        this.f11613f = upstream;
        C3202f mo39124b = upstream.mo39124b();
        this.f11608a = mo39124b;
        this.f11609b = mo39124b.f11571a;
        C3229y c3229y = mo39124b.f11571a;
        this.f11610c = c3229y != null ? c3229y.f11635b : -1;
    }

    @Override // p092c.AbstractC3190ad, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11611d = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0064, code lost:
        if (r0 == r0.f11635b) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ea  */
    @Override // p092c.AbstractC3190ad
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long read(p092c.C3202f r8, long r9) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p092c.C3222u.read(c.f, long):long");
    }

    @Override // p092c.AbstractC3190ad
    public final C3191ae timeout() {
        return this.f11613f.timeout();
    }
}
