package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgf.class */
public final /* synthetic */ class zzbgf implements zzcjb {
    public static final /* synthetic */ zzbgf zza = new zzbgf();

    private /* synthetic */ zzbgf() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcjb
    public final Object zza(Object obj) {
        zzbic zzbicVar;
        if (obj == 0) {
            zzbicVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
            zzbicVar = queryLocalInterface instanceof zzbic ? (zzbic) queryLocalInterface : new zzbic(obj);
        }
        return zzbicVar;
    }
}
