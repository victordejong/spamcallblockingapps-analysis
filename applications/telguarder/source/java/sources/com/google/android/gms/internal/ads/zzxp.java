package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxp.class */
public final class zzxp extends zzgw implements zzxq {
    public zzxp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzxq
    public final IBinder zza(IObjectWrapper iObjectWrapper, zzvs zzvsVar, String str, zzane zzaneVar, int i, int i2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzvsVar);
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(204204000);
        zzdo.writeInt(i2);
        Parcel zza = zza(2, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
