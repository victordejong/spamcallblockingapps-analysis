package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhc.class */
public abstract class zzbhc extends zzaok implements zzbhd {
    public zzbhc() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzg((zzbfd) zzaol.zza(parcel, zzbfd.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            String zze = zze();
            parcel2.writeNoException();
            parcel2.writeString(zze);
            return true;
        } else if (i == 3) {
            boolean zzi = zzi();
            parcel2.writeNoException();
            zzaol.zzc(parcel2, zzi);
            return true;
        } else if (i == 4) {
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            zzh((zzbfd) zzaol.zza(parcel, zzbfd.CREATOR), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }
}
