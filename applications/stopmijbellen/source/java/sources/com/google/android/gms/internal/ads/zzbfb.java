package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfb.class */
public final /* synthetic */ class zzbfb implements zzcjb {
    public static final /* synthetic */ zzbfb zza = new zzbfb();

    private /* synthetic */ zzbfb() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcjb
    public final Object zza(Object obj) {
        zzbhl zzbhlVar;
        if (obj == 0) {
            zzbhlVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            zzbhlVar = queryLocalInterface instanceof zzbhl ? (zzbhl) queryLocalInterface : new zzbhl(obj);
        }
        return zzbhlVar;
    }
}
