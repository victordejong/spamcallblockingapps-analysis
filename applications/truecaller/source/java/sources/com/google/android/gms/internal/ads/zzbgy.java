package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgy.class */
public abstract class zzbgy extends zzadk implements zzbgz {
    public zzbgy() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    public static zzbgz zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        return queryLocalInterface instanceof zzbgz ? (zzbgz) queryLocalInterface : new zzbgx(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String zze = zze();
            parcel2.writeNoException();
            parcel2.writeString(zze);
            return true;
        } else if (i == 2) {
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<zzbdp> zzg = zzg();
            parcel2.writeNoException();
            parcel2.writeTypedList(zzg);
            return true;
        }
    }
}
