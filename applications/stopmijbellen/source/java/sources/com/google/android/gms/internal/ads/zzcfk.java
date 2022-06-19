package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfk.class */
public final /* synthetic */ class zzcfk implements zzcjb {
    public static final /* synthetic */ zzcfk zza = new zzcfk();

    private /* synthetic */ zzcfk() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcjb
    public final Object zza(Object obj) {
        zzcfd zzcfdVar;
        if (obj == 0) {
            zzcfdVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
            zzcfdVar = queryLocalInterface instanceof zzcfd ? (zzcfd) queryLocalInterface : new zzcfd(obj);
        }
        return zzcfdVar;
    }
}
