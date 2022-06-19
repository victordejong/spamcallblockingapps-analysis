package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzagx.class */
public final class zzagx {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zzdgk;
    private final NativeCustomTemplateAd.OnCustomClickListener zzdgl;
    private NativeCustomTemplateAd zzdgm;

    public zzagx(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zzdgk = onCustomTemplateAdLoadedListener;
        this.zzdgl = onCustomClickListener;
    }

    public final NativeCustomTemplateAd zzb(zzafn zzafnVar) {
        synchronized (this) {
            NativeCustomTemplateAd nativeCustomTemplateAd = this.zzdgm;
            if (nativeCustomTemplateAd != null) {
                return nativeCustomTemplateAd;
            }
            zzafo zzafoVar = new zzafo(zzafnVar);
            this.zzdgm = zzafoVar;
            return zzafoVar;
        }
    }

    public final zzafy zztz() {
        return new zzagy(this, (zzagw) null);
    }

    public final zzafx zzua() {
        if (this.zzdgl == null) {
            return null;
        }
        return new zzagz(this, (zzagw) null);
    }
}
