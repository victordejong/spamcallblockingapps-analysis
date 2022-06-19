package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgd.class */
public final /* synthetic */ class zzbgd implements zzcjb {
    public static final /* synthetic */ zzbgd zza = new zzbgd();

    private /* synthetic */ zzbgd() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcjb
    public final Object zza(Object obj) {
        zzbhh zzbhhVar;
        if (obj == 0) {
            zzbhhVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
            zzbhhVar = queryLocalInterface instanceof zzbhh ? (zzbhh) queryLocalInterface : new zzbhh(obj);
        }
        return zzbhhVar;
    }
}
