package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqn.class */
public final class zzbqn {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zza;
    private final NativeCustomTemplateAd.OnCustomClickListener zzb;
    private NativeCustomTemplateAd zzc;

    public zzbqn(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomTemplateAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    public final NativeCustomTemplateAd zzf(zzbpc zzbpcVar) {
        synchronized (this) {
            NativeCustomTemplateAd nativeCustomTemplateAd = this.zzc;
            if (nativeCustomTemplateAd != null) {
                return nativeCustomTemplateAd;
            }
            zzbpd zzbpdVar = new zzbpd(zzbpcVar);
            this.zzc = zzbpdVar;
            return zzbpdVar;
        }
    }

    public final zzbpm zzd() {
        if (this.zzb == null) {
            return null;
        }
        return new zzbqk(this, null);
    }

    public final zzbpp zze() {
        return new zzbqm(this, null);
    }
}
