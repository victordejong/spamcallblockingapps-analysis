package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbei.class */
public final /* synthetic */ class zzbei implements zzcgv {
    public static final zzcgv zza = new zzbei();

    private zzbei() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgv
    public final Object zza(Object obj) {
        zzbgf zzbgfVar;
        if (obj == 0) {
            zzbgfVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
            zzbgfVar = queryLocalInterface instanceof zzbgf ? (zzbgf) queryLocalInterface : new zzbgf(obj);
        }
        return zzbgfVar;
    }
}
