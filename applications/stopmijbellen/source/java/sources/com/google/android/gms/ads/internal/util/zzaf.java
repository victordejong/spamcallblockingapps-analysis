package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaf.class */
public final class zzaf {
    private boolean zza = false;
    private float zzb = 1.0f;

    public static float zzb(Context context) {
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

    private final boolean zzf() {
        boolean z;
        synchronized (this) {
            z = this.zzb >= 0.0f;
        }
        return z;
    }

    public final float zza() {
        synchronized (this) {
            if (zzf()) {
                return this.zzb;
            }
            return 1.0f;
        }
    }

    public final void zzc(boolean z) {
        synchronized (this) {
            this.zza = z;
        }
    }

    public final void zzd(float f) {
        synchronized (this) {
            this.zzb = f;
        }
    }

    public final boolean zze() {
        boolean z;
        synchronized (this) {
            z = this.zza;
        }
        return z;
    }
}
