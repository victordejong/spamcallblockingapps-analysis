package androidx.media2.exoplayer.external.drm;

import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.m;
import androidx.media2.exoplayer.external.util.a;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/l.class */
public final class l<T extends m> implements DrmSession<T> {

    /* renamed from: a  reason: collision with root package name */
    private final DrmSession.DrmSessionException f2992a;

    public l(DrmSession.DrmSessionException drmSessionException) {
        this.f2992a = (DrmSession.DrmSessionException) a.a(drmSessionException);
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final int b() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final DrmSession.DrmSessionException c() {
        return this.f2992a;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final T d() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final Map<String, String> e() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final void f() {
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public final void g() {
    }
}
