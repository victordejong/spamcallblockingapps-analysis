package com.google.android.gms.ads.internal.util;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzgw;
import com.google.android.gms.internal.ads.zzgx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbi.class */
public final class zzbi extends zzgw implements zzbg {
    public zzbi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final void zzap(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str);
        zzdo.writeString(str2);
        Parcel zza = zza(1, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }
}
