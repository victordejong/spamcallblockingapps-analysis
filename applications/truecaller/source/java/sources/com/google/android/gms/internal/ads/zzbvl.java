package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbvl.class */
public abstract class zzbvl extends zzadk implements zzbvm {
    public zzbvl() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzbvm zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return queryLocalInterface instanceof zzbvm ? (zzbvm) queryLocalInterface : new zzbvk(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zze();
                break;
            case 2:
                zzf();
                break;
            case 3:
                zzg(parcel.readInt());
                break;
            case 4:
                zzh();
                break;
            case 5:
                zzi();
                break;
            case 6:
                zzj();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    if (!(queryLocalInterface instanceof zzbvq)) {
                        new zzbvq(readStrongBinder);
                        break;
                    } else {
                        zzbvq zzbvqVar = (zzbvq) queryLocalInterface;
                        break;
                    }
                }
                break;
            case 8:
                zzk();
                break;
            case 9:
                zzl(parcel.readString(), parcel.readString());
                break;
            case 10:
                zzbna.zzb(parcel.readStrongBinder());
                parcel.readString();
                break;
            case 11:
                zzn();
                break;
            case 12:
                parcel.readString();
                break;
            case 13:
                zzo();
                break;
            case 14:
                zzp((zzccl) zzadl.zzc(parcel, zzccl.CREATOR));
                break;
            case 15:
                zzq();
                break;
            case 16:
                zzr(zzcco.zzb(parcel.readStrongBinder()));
                break;
            case 17:
                zzs(parcel.readInt());
                break;
            case 18:
                zzt();
                break;
            case 19:
                Bundle bundle = (Bundle) zzadl.zzc(parcel, Bundle.CREATOR);
                break;
            case 20:
                zzu();
                break;
            case 21:
                zzv(parcel.readString());
                break;
            case 22:
                zzw(parcel.readInt(), parcel.readString());
                break;
            case 23:
                zzx((zzbcz) zzadl.zzc(parcel, zzbcz.CREATOR));
                break;
            case 24:
                zzy((zzbcz) zzadl.zzc(parcel, zzbcz.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
