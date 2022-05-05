package androidx.media2.exoplayer.external.drm;

import android.os.Looper;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.drm.ExoMediaCrypto;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSessionManager.class */
public interface DrmSessionManager<T extends ExoMediaCrypto> {
    DrmSession<T> acquireSession(Looper looper, DrmInitData drmInitData);

    boolean canAcquireSession(DrmInitData drmInitData);

    void releaseSession(DrmSession<T> drmSession);
}
