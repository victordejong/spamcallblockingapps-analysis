package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcba.class */
public final class zzcba {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zza;
    private final NativeCustomFormatAd.OnCustomClickListener zzb;
    private NativeCustomFormatAd zzc;

    public zzcba(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomFormatAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    public final NativeCustomFormatAd zzf(zzbpc zzbpcVar) {
        synchronized (this) {
            NativeCustomFormatAd nativeCustomFormatAd = this.zzc;
            if (nativeCustomFormatAd != null) {
                return nativeCustomFormatAd;
            }
            zzcbb zzcbbVar = new zzcbb(zzbpcVar);
            this.zzc = zzcbbVar;
            return zzcbbVar;
        }
    }

    public final zzbpm zza() {
        if (this.zzb == null) {
            return null;
        }
        return new zzcax(this, null);
    }

    public final zzbpp zzb() {
        return new zzcaz(this, null);
    }
}
