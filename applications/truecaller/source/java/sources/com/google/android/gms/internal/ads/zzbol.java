package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbol.class */
public final class zzbol {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zza;
    private final NativeCustomTemplateAd.OnCustomClickListener zzb;
    private NativeCustomTemplateAd zzc;

    public zzbol(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomTemplateAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    public final NativeCustomTemplateAd zzf(zzbnb zzbnbVar) {
        synchronized (this) {
            NativeCustomTemplateAd nativeCustomTemplateAd = this.zzc;
            if (nativeCustomTemplateAd != null) {
                return nativeCustomTemplateAd;
            }
            zzbnc zzbncVar = new zzbnc(zzbnbVar);
            this.zzc = zzbncVar;
            return zzbncVar;
        }
    }

    public final zzbno zzc() {
        return new zzbok(this, null);
    }

    public final zzbnl zzd() {
        if (this.zzb == null) {
            return null;
        }
        return new zzboj(this, null);
    }
}
