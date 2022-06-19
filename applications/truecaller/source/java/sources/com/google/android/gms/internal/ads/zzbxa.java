package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxa.class */
public abstract class zzbxa extends zzadk implements zzbxb {
    public zzbxa() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zze(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
        } else if (i == 2) {
            zzf(parcel.readString());
        } else if (i == 3) {
            zzg((zzbcz) zzadl.zzc(parcel, zzbcz.CREATOR));
        } else if (i != 4) {
            return false;
        } else {
            zzh(zzbvo.zzb(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
