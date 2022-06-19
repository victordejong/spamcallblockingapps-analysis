package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcei.class */
public abstract class zzcei extends zzaok implements zzcej {
    public zzcei() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcek zzcekVar;
        zzceh zzcehVar;
        if (i == 1) {
            zzg((zzcen) zzaol.zza(parcel, zzcen.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            zzq();
            parcel2.writeNoException();
            return true;
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzcekVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                zzcekVar = queryLocalInterface instanceof zzcem ? (zzcem) queryLocalInterface : new zzcek(readStrongBinder);
            }
            zzo(zzcekVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 34) {
            zzn(zzaol.zzg(parcel));
            parcel2.writeNoException();
            return true;
        } else {
            switch (i) {
                case 5:
                    boolean zzs = zzs();
                    parcel2.writeNoException();
                    zzaol.zzc(parcel2, zzs);
                    return true;
                case 6:
                    zzh();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    zzj();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    zze();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    zzi(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    zzk(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    zzf(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    String zzd = zzd();
                    parcel2.writeNoException();
                    parcel2.writeString(zzd);
                    return true;
                case 13:
                    zzp(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    zzl(zzbhn.zzb(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    Bundle zzb = zzb();
                    parcel2.writeNoException();
                    zzaol.zze(parcel2, zzb);
                    return true;
                case 16:
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 == null) {
                        zzcehVar = null;
                    } else {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                        zzcehVar = queryLocalInterface2 instanceof zzceh ? (zzceh) queryLocalInterface2 : new zzceh(readStrongBinder2);
                    }
                    zzu(zzcehVar);
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.readString();
                    parcel2.writeNoException();
                    return true;
                case 18:
                    zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    zzm(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    boolean zzt = zzt();
                    parcel2.writeNoException();
                    zzaol.zzc(parcel2, zzt);
                    return true;
                case 21:
                    zzbiw zzc = zzc();
                    parcel2.writeNoException();
                    zzaol.zzf(parcel2, zzc);
                    return true;
                default:
                    return false;
            }
        }
    }
}
