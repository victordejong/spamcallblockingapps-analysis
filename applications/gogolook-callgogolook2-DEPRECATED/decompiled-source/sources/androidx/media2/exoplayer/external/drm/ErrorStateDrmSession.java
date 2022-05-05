package androidx.media2.exoplayer.external.drm;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.ExoMediaCrypto;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/ErrorStateDrmSession.class */
public final class ErrorStateDrmSession<T extends ExoMediaCrypto> implements DrmSession<T> {
    public final DrmSession.DrmSessionException error;

    public ErrorStateDrmSession(DrmSession.DrmSessionException drmSessionException) {
        this.error = (DrmSession.DrmSessionException) Assertions.checkNotNull(drmSessionException);
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    @Nullable
    public DrmSession.DrmSessionException getError() {
        return this.error;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    @Nullable
    public T getMediaCrypto() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    @Nullable
    public byte[] getOfflineLicenseKeySetId() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // androidx.media2.exoplayer.external.drm.DrmSession
    @Nullable
    public Map<String, String> queryKeyStatus() {
        return null;
    }
}
