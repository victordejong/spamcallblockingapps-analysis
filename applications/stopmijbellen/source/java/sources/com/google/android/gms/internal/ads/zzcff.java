package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcff.class */
public abstract class zzcff extends zzaok implements zzcfg {
    public zzcff() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzg();
        } else if (i == 2) {
            zze(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            zzf((zzbew) zzaol.zza(parcel, zzbew.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
