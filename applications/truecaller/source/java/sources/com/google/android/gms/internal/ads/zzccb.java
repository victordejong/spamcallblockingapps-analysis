package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccb.class */
public abstract class zzccb extends zzadk implements zzccc {
    public zzccb() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzccd zzccdVar;
        zzcca zzccaVar;
        if (i == 1) {
            zzb((zzccg) zzadl.zzc(parcel, zzccg.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzc();
            parcel2.writeNoException();
            return true;
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzccdVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                zzccdVar = queryLocalInterface instanceof zzccf ? (zzccf) queryLocalInterface : new zzccd(readStrongBinder);
            }
            zzd(zzccdVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 34) {
            zzr(zzadl.zza(parcel));
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 5:
                    boolean zze = zze();
                    parcel2.writeNoException();
                    zzadl.zzb(parcel2, zze);
                    return true;
                case 6:
                    zzf();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    zzg();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    zzh();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    zzi(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    zzj(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    zzk(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    String zzl = zzl();
                    parcel2.writeNoException();
                    parcel2.writeString(zzl);
                    return true;
                case 13:
                    zzm(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    zzn(zzbfq.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    Bundle zzo = zzo();
                    parcel2.writeNoException();
                    zzadl.zze(parcel2, zzo);
                    return true;
                case 16:
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        zzccaVar = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                        zzccaVar = queryLocalInterface2 instanceof zzcca ? (zzcca) queryLocalInterface2 : new zzcca(readStrongBinder2);
                    }
                    zzu(zzccaVar);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.readString();
                    parcel2.writeNoException();
                    return true;
                case 18:
                    zzp(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    zzq(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    boolean zzs = zzs();
                    parcel2.writeNoException();
                    zzadl.zzb(parcel2, zzs);
                    return true;
                case 21:
                    zzbgz zzt = zzt();
                    parcel2.writeNoException();
                    zzadl.zzf(parcel2, zzt);
                    return true;
                default:
                    return false;
            }
        }
    }
}
