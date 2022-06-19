package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbeg.class */
public final /* synthetic */ class zzbeg implements zzcgv {
    public static final zzcgv zza = new zzbeg();

    private zzbeg() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgv
    public final Object zza(Object obj) {
        zzbfk zzbfkVar;
        if (obj == 0) {
            zzbfkVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
            zzbfkVar = queryLocalInterface instanceof zzbfk ? (zzbfk) queryLocalInterface : new zzbfk(obj);
        }
        return zzbfkVar;
    }
}
