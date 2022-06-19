package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmq.class */
public abstract class zzbmq extends zzadk implements zzbmr {
    public zzbmq() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    public static zzbmr zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        return queryLocalInterface instanceof zzbmr ? (zzbmr) queryLocalInterface : new zzbmp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzb(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
        } else if (i == 2) {
            zzc();
        } else if (i != 3) {
            return false;
        } else {
            zzd(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
