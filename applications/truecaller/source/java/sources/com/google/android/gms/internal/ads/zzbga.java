package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbga.class */
public abstract class zzbga extends zzadk implements zzbgb {
    public zzbga() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzb((zzbcz) zzadl.zzc(parcel, zzbcz.CREATOR));
        } else if (i == 2) {
            zzc();
        } else if (i == 3) {
            zzd();
        } else if (i == 4) {
            zze();
        } else if (i != 5) {
            return false;
        } else {
            zzf();
        }
        parcel2.writeNoException();
        return true;
    }
}
