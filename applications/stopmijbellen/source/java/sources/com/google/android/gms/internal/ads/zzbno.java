package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbno.class */
public final /* synthetic */ class zzbno implements zzcjb {
    public static final /* synthetic */ zzbno zza = new zzbno();

    private /* synthetic */ zzbno() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcjb
    public final Object zza(Object obj) {
        zzbnq zzbnqVar;
        if (obj == 0) {
            zzbnqVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.flags.IFlagRetrieverSupplierProxy");
            zzbnqVar = queryLocalInterface instanceof zzbnq ? (zzbnq) queryLocalInterface : new zzbnq(obj);
        }
        return zzbnqVar;
    }
}
