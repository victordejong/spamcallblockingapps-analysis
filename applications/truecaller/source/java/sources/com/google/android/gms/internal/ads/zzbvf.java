package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvf.class */
public abstract class zzbvf extends zzadk implements zzbvg {
    public zzbvf() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzbvg zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof zzbvg ? (zzbvg) queryLocalInterface : new zzbve(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzbvj zzb = zzb(parcel.readString());
            parcel2.writeNoException();
            zzadl.zzf(parcel2, zzb);
            return true;
        } else if (i == 2) {
            boolean zzc = zzc(parcel.readString());
            parcel2.writeNoException();
            zzadl.zzb(parcel2, zzc);
            return true;
        } else if (i == 3) {
            zzbxn zzf = zzf(parcel.readString());
            parcel2.writeNoException();
            zzadl.zzf(parcel2, zzf);
            return true;
        } else if (i != 4) {
            return false;
        } else {
            boolean zzd = zzd(parcel.readString());
            parcel2.writeNoException();
            zzadl.zzb(parcel2, zzd);
            return true;
        }
    }
}
