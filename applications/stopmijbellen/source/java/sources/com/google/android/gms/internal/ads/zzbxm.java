package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxm.class */
public abstract class zzbxm extends zzaok implements zzbxn {
    public zzbxm() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzbxn zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        return queryLocalInterface instanceof zzbxn ? (zzbxn) queryLocalInterface : new zzbxl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
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
                zzn();
                break;
            case 5:
                zzp();
                break;
            case 6:
                zzo();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    if (queryLocalInterface instanceof zzbxr) {
                        zzbxr zzbxrVar = (zzbxr) queryLocalInterface;
                        break;
                    }
                }
                break;
            case 8:
                zzm();
                break;
            case 9:
                zzq(parcel.readString(), parcel.readString());
                break;
            case 10:
                zzbpb.zzb(parcel.readStrongBinder());
                parcel.readString();
                break;
            case 11:
                zzv();
                break;
            case 12:
                parcel.readString();
                break;
            case 13:
                zzy();
                break;
            case 14:
                zzs((zzces) zzaol.zza(parcel, zzces.CREATOR));
                break;
            case 15:
                zzw();
                break;
            case 16:
                zzt(zzcev.zzb(parcel.readStrongBinder()));
                break;
            case 17:
                zzj(parcel.readInt());
                break;
            case 18:
                zzu();
                break;
            case 19:
                Bundle bundle = (Bundle) zzaol.zza(parcel, Bundle.CREATOR);
                break;
            case 20:
                zzx();
                break;
            case 21:
                zzl(parcel.readString());
                break;
            case 22:
                zzi(parcel.readInt(), parcel.readString());
                break;
            case 23:
                zzh((zzbew) zzaol.zza(parcel, zzbew.CREATOR));
                break;
            case 24:
                zzk((zzbew) zzaol.zza(parcel, zzbew.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
