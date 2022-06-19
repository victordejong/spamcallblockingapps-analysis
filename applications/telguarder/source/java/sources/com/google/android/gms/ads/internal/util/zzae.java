package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzae.class */
public final class zzae {
    private boolean zzduy = false;
    private float zzdut = 1.0f;

    public static float zzbg(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager == null) {
            return 0.0f;
        }
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        if (streamMaxVolume != 0) {
            return streamVolume / streamMaxVolume;
        }
        return 0.0f;
    }

    private final boolean zzzk() {
        boolean z;
        synchronized (this) {
            z = this.zzdut >= 0.0f;
        }
        return z;
    }

    public final void setAppMuted(boolean z) {
        synchronized (this) {
            this.zzduy = z;
        }
    }

    public final void setAppVolume(float f) {
        synchronized (this) {
            this.zzdut = f;
        }
    }

    public final float zzra() {
        synchronized (this) {
            if (zzzk()) {
                return this.zzdut;
            }
            return 1.0f;
        }
    }

    public final boolean zzrb() {
        boolean z;
        synchronized (this) {
            z = this.zzduy;
        }
        return z;
    }
}
