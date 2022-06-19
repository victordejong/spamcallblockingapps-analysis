package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqw.class */
public final class zzaqw {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zzdqn;
    private final NativeCustomFormatAd.OnCustomClickListener zzdqo;
    private NativeCustomFormatAd zzdqp;

    public zzaqw(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zzdqn = onCustomFormatAdLoadedListener;
        this.zzdqo = onCustomClickListener;
    }

    public final NativeCustomFormatAd zzc(zzafn zzafnVar) {
        synchronized (this) {
            NativeCustomFormatAd nativeCustomFormatAd = this.zzdqp;
            if (nativeCustomFormatAd != null) {
                return nativeCustomFormatAd;
            }
            zzara zzaraVar = new zzara(zzafnVar);
            this.zzdqp = zzaraVar;
            return zzaraVar;
        }
    }

    public final zzafx zzua() {
        if (this.zzdqo == null) {
            return null;
        }
        return new zzaqy(this);
    }

    public final zzafy zzvs() {
        return new zzarb(this);
    }
}
