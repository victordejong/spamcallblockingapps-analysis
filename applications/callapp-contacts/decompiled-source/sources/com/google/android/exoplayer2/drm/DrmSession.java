package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.c;
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

        public static void a(DrmSession drmSession, DrmSession drmSession2) {
            if (drmSession != drmSession2) {
                if (drmSession2 != null) {
                    drmSession2.a(null);
                }
                if (drmSession != null) {
                    drmSession.b(null);
                }
            }
        }
    }

    void a(c.a aVar);

    void b(c.a aVar);

    int c();

    boolean d();

    DrmSessionException e();

    UUID f();

    h g();

    Map<String, String> h();
}
