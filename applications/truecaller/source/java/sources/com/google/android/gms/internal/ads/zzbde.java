package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbde.class */
public final /* synthetic */ class zzbde implements zzcgv {
    public static final zzcgv zza = new zzbde();

    private zzbde() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgv
    public final Object zza(Object obj) {
        zzbfo zzbfoVar;
        if (obj == 0) {
            zzbfoVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
            zzbfoVar = queryLocalInterface instanceof zzbfo ? (zzbfo) queryLocalInterface : new zzbfo(obj);
        }
        return zzbfoVar;
    }
}
