package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcey.class */
public abstract class zzcey extends zzaok implements zzcez {
    public zzcey() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzcez zzq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return queryLocalInterface instanceof zzcez ? (zzcez) queryLocalInterface : new zzcex(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcfe zzcfeVar;
        zzcfa zzcfaVar;
        zzcfh zzcfhVar;
        zzcfe zzcfeVar2;
        switch (i) {
            case 1:
                zzbfd zzbfdVar = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcfeVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzcfeVar = queryLocalInterface instanceof zzcfg ? (zzcfg) queryLocalInterface : new zzcfe(readStrongBinder);
                }
                zzf(zzbfdVar, zzcfeVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzcfaVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzcfaVar = queryLocalInterface2 instanceof zzcfc ? (zzcfc) queryLocalInterface2 : new zzcfa(readStrongBinder2);
                }
                zzk(zzcfaVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzo = zzo();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzo);
                return true;
            case 4:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 5:
                zzm(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzcfhVar = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzcfhVar = queryLocalInterface3 instanceof zzcfh ? (zzcfh) queryLocalInterface3 : new zzcfh(readStrongBinder3);
                }
                zzp(zzcfhVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzl((zzcfn) zzaol.zza(parcel, zzcfn.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                zzi(zzbip.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle zzb = zzb();
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzb);
                return true;
            case 10:
                zzn(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzaol.zzg(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                zzcew zzd = zzd();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzd);
                return true;
            case 12:
                zzbiw zzc = zzc();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzc);
                return true;
            case 13:
                zzj(zzbis.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                zzbfd zzbfdVar2 = (zzbfd) zzaol.zza(parcel, zzbfd.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzcfeVar2 = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzcfeVar2 = queryLocalInterface4 instanceof zzcfg ? (zzcfg) queryLocalInterface4 : new zzcfe(readStrongBinder4);
                }
                zzg(zzbfdVar2, zzcfeVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                zzh(zzaol.zzg(parcel));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
