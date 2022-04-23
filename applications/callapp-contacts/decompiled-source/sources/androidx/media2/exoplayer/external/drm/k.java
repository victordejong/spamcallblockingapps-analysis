package androidx.media2.exoplayer.external.drm;

import android.os.Looper;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.m;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/k.class */
public interface k<T extends m> {
    public static final k<m> e = new k<m>() { // from class: androidx.media2.exoplayer.external.drm.k.1
        @Override // androidx.media2.exoplayer.external.drm.k
        public final DrmSession<m> a(Looper looper, DrmInitData drmInitData) {
            return new l(new DrmSession.DrmSessionException(new UnsupportedDrmException(1)));
        }

        @Override // androidx.media2.exoplayer.external.drm.k
        public final boolean a(DrmInitData drmInitData) {
            return false;
        }

        @Override // androidx.media2.exoplayer.external.drm.k
        public final Class<m> b(DrmInitData drmInitData) {
            return null;
        }
    };

    DrmSession<T> a(Looper looper, DrmInitData drmInitData);

    boolean a(DrmInitData drmInitData);

    Class<? extends m> b(DrmInitData drmInitData);
}
