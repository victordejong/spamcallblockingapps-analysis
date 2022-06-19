package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccj.class */
public abstract class zzccj extends zzadk implements zzcck {
    public zzccj() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static zzcck zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        return queryLocalInterface instanceof zzcck ? (zzcck) queryLocalInterface : new zzcci(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zze(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 2:
                zzf(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                zzg(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 4:
                zzh(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 5:
                zzi(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 6:
                zzj(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 7:
                zzk(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), (zzccl) zzadl.zzc(parcel, zzccl.CREATOR));
                break;
            case 8:
                zzl(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 9:
                zzm(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                zzn(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 11:
                zzo(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                break;
            case 12:
                Bundle bundle = (Bundle) zzadl.zzc(parcel, Bundle.CREATOR);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
