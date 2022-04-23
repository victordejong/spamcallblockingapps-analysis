package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.k;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.x;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final ak f3722a;

    /* renamed from: b  reason: collision with root package name */
    private final k<?> f3723b;

    /* renamed from: c  reason: collision with root package name */
    private final x f3724c = new x();

    /* renamed from: d  reason: collision with root package name */
    private final boolean f3725d = false;
    private Format e;
    private DrmSession<?> f;

    public j(ak akVar, k<?> kVar) {
        this.f3722a = akVar;
        this.f3723b = kVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0199, code lost:
        if (r0.length < r20) goto L_0x019c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01b9, code lost:
        if (r0.length < r20) goto L_0x01bc;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0430  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(androidx.media2.exoplayer.external.x r10, androidx.media2.exoplayer.external.b.e r11, boolean r12, boolean r13, long r14) {
        /*
            Method dump skipped, instructions count: 1250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.j.a(androidx.media2.exoplayer.external.x, androidx.media2.exoplayer.external.b.e, boolean, boolean, long):int");
    }

    public final void a() {
        DrmSession<?> drmSession = this.f;
        if (drmSession != null) {
            drmSession.g();
            this.f = null;
        }
    }

    public final boolean a(boolean z) {
        ak akVar = this.f3722a;
        int a2 = akVar.f3578a.a(akVar.f3581d);
        if (a2 == 0) {
            return z;
        }
        if (a2 == 1) {
            return true;
        }
        if (a2 == 2) {
            return this.f == null || this.f3725d;
        }
        if (a2 == 3) {
            return this.f3723b == k.e || ((DrmSession) a.a(this.f)).b() == 4;
        }
        throw new IllegalStateException();
    }

    public final void b() throws IOException {
        DrmSession<?> drmSession = this.f;
        if (drmSession != null && drmSession.b() == 1) {
            throw ((DrmSession.DrmSessionException) a.a(this.f.c()));
        }
    }
}
