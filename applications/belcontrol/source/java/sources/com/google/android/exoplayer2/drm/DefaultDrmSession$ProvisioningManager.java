package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.ExoMediaCrypto;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager.class */
public interface DefaultDrmSession$ProvisioningManager<T extends ExoMediaCrypto> {
    void onProvisionCompleted();

    void onProvisionError(Exception exc);

    void provisionRequired(DefaultDrmSession<T> defaultDrmSession);
}
