package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiu.class */
public final class zzbiu extends zzaoj implements zzbiw {
    public zzbiu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzbiw
    public final String zze() throws RemoteException {
        Parcel zzbs = zzbs(1, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbiw
    public final String zzf() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbiw
    public final List<zzbfm> zzg() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        ArrayList createTypedArrayList = zzbs.createTypedArrayList(zzbfm.CREATOR);
        zzbs.recycle();
        return createTypedArrayList;
    }
}
