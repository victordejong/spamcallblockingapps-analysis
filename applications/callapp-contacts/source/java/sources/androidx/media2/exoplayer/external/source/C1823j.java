package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.C2058x;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.AbstractC1468k;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.source.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/j.class */
public final class C1823j {

    /* renamed from: a */
    private final C1753ak f7314a;

    /* renamed from: b */
    private final AbstractC1468k<?> f7315b;

    /* renamed from: c */
    private final C2058x f7316c = new C2058x();

    /* renamed from: d */
    private final boolean f7317d = false;

    /* renamed from: e */
    private Format f7318e;

    /* renamed from: f */
    private DrmSession<?> f7319f;

    public C1823j(C1753ak c1753ak, AbstractC1468k<?> abstractC1468k) {
        this.f7314a = c1753ak;
        this.f7315b = abstractC1468k;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0199, code lost:
        if (r0.length < r20) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01b9, code lost:
        if (r0.length < r20) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0430  */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v178, types: [long] */
    /* JADX WARN: Type inference failed for: r0v201, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m42123a(androidx.media2.exoplayer.external.C2058x r10, androidx.media2.exoplayer.external.p063b.C1442e r11, boolean r12, boolean r13, long r14) {
        /*
            Method dump skipped, instructions count: 1250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.C1823j.m42123a(androidx.media2.exoplayer.external.x, androidx.media2.exoplayer.external.b.e, boolean, boolean, long):int");
    }

    /* renamed from: a */
    public final void m42124a() {
        DrmSession<?> drmSession = this.f7319f;
        if (drmSession != null) {
            drmSession.mo42860g();
            this.f7319f = null;
        }
    }

    /* renamed from: a */
    public final boolean m42122a(boolean z) {
        C1753ak c1753ak = this.f7314a;
        int m42331a = c1753ak.f6931a.m42331a(c1753ak.f6934d);
        if (m42331a == 0) {
            return z;
        }
        if (m42331a == 1) {
            return true;
        }
        if (m42331a == 2) {
            return this.f7319f == null || this.f7317d;
        } else if (m42331a != 3) {
            throw new IllegalStateException();
        } else {
            return this.f7315b == AbstractC1468k.f5584e || ((DrmSession) C1993a.m41690a(this.f7319f)).mo42865b() == 4;
        }
    }

    /* renamed from: b */
    public final void m42121b() throws IOException {
        DrmSession<?> drmSession = this.f7319f;
        if (drmSession == null || drmSession.mo42865b() != 1) {
            return;
        }
        throw ((DrmSession.DrmSessionException) C1993a.m41690a(this.f7319f.mo42864c()));
    }
}
