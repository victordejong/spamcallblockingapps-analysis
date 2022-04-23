package androidx.media2.exoplayer.external.drm;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.drm.ExoMediaCrypto;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession.class */
public interface DrmSession<T extends ExoMediaCrypto> {
    public static final int STATE_ERROR = 1;
    public static final int STATE_OPENED = 3;
    public static final int STATE_OPENED_WITH_KEYS = 4;
    public static final int STATE_OPENING = 2;
    public static final int STATE_RELEASED = 0;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession$DrmSessionException.class */
    public static class DrmSessionException extends Exception {
        public DrmSessionException(Throwable th) {
            super(th);
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DrmSession$State.class */
    public @interface State {
    }

    @Nullable
    DrmSessionException getError();

    @Nullable
    T getMediaCrypto();

    @Nullable
    byte[] getOfflineLicenseKeySetId();

    int getState();

    @Nullable
    Map<String, String> queryKeyStatus();
}
