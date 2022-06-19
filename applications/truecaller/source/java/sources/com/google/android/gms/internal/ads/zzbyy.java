package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyy.class */
public final class zzbyy {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zza;
    private final NativeCustomFormatAd.OnCustomClickListener zzb;
    private NativeCustomFormatAd zzc;

    public zzbyy(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomFormatAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    public final NativeCustomFormatAd zzf(zzbnb zzbnbVar) {
        synchronized (this) {
            NativeCustomFormatAd nativeCustomFormatAd = this.zzc;
            if (nativeCustomFormatAd != null) {
                return nativeCustomFormatAd;
            }
            zzbyz zzbyzVar = new zzbyz(zzbnbVar);
            this.zzc = zzbyzVar;
            return zzbyzVar;
        }
    }

    public final zzbno zzc() {
        return new zzbyx(this, null);
    }

    public final zzbnl zzd() {
        if (this.zzb == null) {
            return null;
        }
        return new zzbyw(this, null);
    }
}
