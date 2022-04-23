package androidx.media2.exoplayer.external.drm;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/j.class */
public abstract /* synthetic */ class j {
    public static <T extends m> void a(DrmSession<T> drmSession, DrmSession<T> drmSession2) {
        if (drmSession != drmSession2) {
            if (drmSession2 != null) {
                drmSession2.f();
            }
            if (drmSession != null) {
                drmSession.g();
            }
        }
    }
}
