package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgx.class */
public final class zzbgx extends zzadj implements zzbgz {
    public zzbgx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final String zze() throws RemoteException {
        Parcel zzbi = zzbi(1, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final String zzf() throws RemoteException {
        Parcel zzbi = zzbi(2, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final List<zzbdp> zzg() throws RemoteException {
        Parcel zzbi = zzbi(3, zza());
        ArrayList createTypedArrayList = zzbi.createTypedArrayList(zzbdp.CREATOR);
        zzbi.recycle();
        return createTypedArrayList;
    }
}
