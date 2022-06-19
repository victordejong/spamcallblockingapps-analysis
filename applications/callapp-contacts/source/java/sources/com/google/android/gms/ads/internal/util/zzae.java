package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzae.class */
public final class zzae {
    private boolean zzdwi = false;
    private float zzdwd = 1.0f;

    private final boolean zzaad() {
        boolean z;
        synchronized (this) {
            z = this.zzdwd >= BitmapDescriptorFactory.HUE_RED;
        }
        return z;
    }

    public static float zzbj(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        return streamMaxVolume == 0 ? BitmapDescriptorFactory.HUE_RED : audioManager.getStreamVolume(3) / streamMaxVolume;
    }

    public final void setAppMuted(boolean z) {
        synchronized (this) {
            this.zzdwi = z;
        }
    }

    public final void setAppVolume(float f) {
        synchronized (this) {
            this.zzdwd = f;
        }
    }

    public final float zzrg() {
        synchronized (this) {
            if (zzaad()) {
                return this.zzdwd;
            }
            return 1.0f;
        }
    }

    public final boolean zzrh() {
        boolean z;
        synchronized (this) {
            z = this.zzdwi;
        }
        return z;
    }
}
