package com.google.android.gms.internal.ads;

import com.google.android.gms.appset.AppSetIdInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzerd.class */
public final /* synthetic */ class zzerd implements zzfpv {
    public static final /* synthetic */ zzerd zza = new zzerd();

    private /* synthetic */ zzerd() {
    }

    @Override // com.google.android.gms.internal.ads.zzfpv
    public final Object apply(Object obj) {
        AppSetIdInfo appSetIdInfo = (AppSetIdInfo) obj;
        return new zzerf(appSetIdInfo.getId(), appSetIdInfo.getScope());
    }
}
