package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzavv.class */
public final class zzavv extends zzgw implements zzavs {
    public zzavv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzavs
    public final IBinder zzd(IObjectWrapper iObjectWrapper, String str, zzane zzaneVar, int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(204204000);
        Parcel zza = zza(1, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
