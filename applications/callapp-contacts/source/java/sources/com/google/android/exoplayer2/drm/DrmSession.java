package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.AbstractC10955c;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DrmSession.class */
public interface DrmSession {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DrmSession$DrmSessionException.class */
    public static class DrmSessionException extends IOException {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DrmSession$_CC.class */
    public final /* synthetic */ class _CC {
        public static boolean $default$d(DrmSession drmSession) {
            return false;
        }

        /* renamed from: a */
        public static void m21867a(DrmSession drmSession, DrmSession drmSession2) {
            if (drmSession == drmSession2) {
                return;
            }
            if (drmSession2 != null) {
                drmSession2.mo21845a(null);
            }
            if (drmSession == null) {
                return;
            }
            drmSession.mo21844b(null);
        }
    }

    /* renamed from: a */
    void mo21845a(AbstractC10955c.C10956a c10956a);

    /* renamed from: b */
    void mo21844b(AbstractC10955c.C10956a c10956a);

    /* renamed from: c */
    int mo21843c();

    /* renamed from: d */
    boolean mo21842d();

    /* renamed from: e */
    DrmSessionException mo21841e();

    /* renamed from: f */
    UUID mo21840f();

    /* renamed from: g */
    AbstractC10963h mo21839g();

    /* renamed from: h */
    Map<String, String> mo21838h();
}
