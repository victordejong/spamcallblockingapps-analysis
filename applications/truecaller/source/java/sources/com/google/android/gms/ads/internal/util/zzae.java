package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzae.class */
public final class zzae {
    private boolean zza = false;
    private float zzb = 1.0f;

    public static float zze(Context context) {
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

    public final void zza(float f) {
        synchronized (this) {
            this.zzb = f;
        }
    }

    public final float zzb() {
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

    public final boolean zzd() {
        boolean z;
        synchronized (this) {
            z = this.zza;
        }
        return z;
    }
}
