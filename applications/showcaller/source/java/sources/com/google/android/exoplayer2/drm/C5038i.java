package com.google.android.exoplayer2.drm;
/* renamed from: com.google.android.exoplayer2.drm.i */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/i.class */
public final /* synthetic */ class C5038i {
    /* renamed from: a */
    public static <T extends AbstractC5043m> void m20780a(DrmSession<T> drmSession, DrmSession<T> drmSession2) {
        if (drmSession == drmSession2) {
            return;
        }
        if (drmSession2 != null) {
            drmSession2.mo20769a();
        }
        if (drmSession == null) {
            return;
        }
        drmSession.mo20768b();
    }
}
