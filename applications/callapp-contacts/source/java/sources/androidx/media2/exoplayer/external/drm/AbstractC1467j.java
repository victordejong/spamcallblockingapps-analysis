package androidx.media2.exoplayer.external.drm;
/* renamed from: androidx.media2.exoplayer.external.drm.j */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/j.class */
public abstract /* synthetic */ class AbstractC1467j {
    /* renamed from: a */
    public static <T extends AbstractC1471m> void m42869a(DrmSession<T> drmSession, DrmSession<T> drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.mo42861f();
        }
        if (drmSession == null) {
            return;
        }
        drmSession.mo42860g();
    }
}
