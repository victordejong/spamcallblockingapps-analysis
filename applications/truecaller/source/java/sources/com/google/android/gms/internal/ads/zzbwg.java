package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbwg.class */
public final class zzbwg extends zzbvo {
    private final MediationInterscrollerAd zza;

    public zzbwg(MediationInterscrollerAd mediationInterscrollerAd) {
        this.zza = mediationInterscrollerAd;
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final IObjectWrapper zze() {
        return new ObjectWrapper(this.zza.getView());
    }

    @Override // com.google.android.gms.internal.ads.zzbvp
    public final boolean zzf() {
        return this.zza.shouldDelegateInterscrollerEffect();
    }
}
