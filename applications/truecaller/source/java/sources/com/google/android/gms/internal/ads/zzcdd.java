package com.google.android.gms.internal.ads;

import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdd.class */
public final /* synthetic */ class zzcdd implements zzcgv {
    public static final zzcgv zza = new zzcdd();

    private zzcdd() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzcgv
    public final Object zza(Object obj) {
        zzccw zzccwVar;
        if (obj == 0) {
            zzccwVar = null;
        } else {
            IInterface queryLocalInterface = obj.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
            zzccwVar = queryLocalInterface instanceof zzccw ? (zzccw) queryLocalInterface : new zzccw(obj);
        }
        return zzccwVar;
    }
}
