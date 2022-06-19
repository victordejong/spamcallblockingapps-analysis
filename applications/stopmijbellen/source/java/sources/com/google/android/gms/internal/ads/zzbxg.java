package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxg.class */
public abstract class zzbxg extends zzaok implements zzbxh {
    public zzbxg() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzbxh zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof zzbxh ? (zzbxh) queryLocalInterface : new zzbxf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzbxk zzb = zzb(parcel.readString());
            parcel2.writeNoException();
            zzaol.zzf(parcel2, zzb);
            return true;
        } else if (i == 2) {
            boolean zzf = zzf(parcel.readString());
            parcel2.writeNoException();
            zzaol.zzc(parcel2, zzf);
            return true;
        } else if (i == 3) {
            zzbzo zzc = zzc(parcel.readString());
            parcel2.writeNoException();
            zzaol.zzf(parcel2, zzc);
            return true;
        } else if (i != 4) {
            return false;
        } else {
            boolean zze = zze(parcel.readString());
            parcel2.writeNoException();
            zzaol.zzc(parcel2, zze);
            return true;
        }
    }
}
