package androidx.media2.exoplayer.external.drm;

import androidx.media2.exoplayer.external.drm.AbstractC1471m;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.util.C1993a;
import java.util.Map;
/* renamed from: androidx.media2.exoplayer.external.drm.l */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/l.class */
public final class C1470l<T extends AbstractC1471m> implements DrmSession<T> {

    /* renamed from: a */
    private final DrmSession.DrmSessionException f5585a;

    public C1470l(DrmSession.DrmSessionException drmSessionException) {
        this.f5585a = (DrmSession.DrmSessionException) C1993a.m41690a(drmSessionException);
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: b */
    public final int mo42865b() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: c */
    public final DrmSession.DrmSessionException mo42864c() {
        return this.f5585a;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: d */
    public final T mo42863d() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: e */
    public final Map<String, String> mo42862e() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: f */
    public final void mo42861f() {
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    /* renamed from: g */
    public final void mo42860g() {
    }
}
