package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzh.class */
public abstract class zzbzh extends zzaok implements zzbzi {
    public zzbzh() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzg(zzbxv.zzb(parcel.readStrongBinder()));
        } else if (i == 2) {
            zze(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            zzf((zzbew) zzaol.zza(parcel, zzbew.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
