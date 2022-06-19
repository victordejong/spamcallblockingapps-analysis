package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbr.class */
public abstract class zzcbr extends zzaok implements zzcbs {
    public zzcbr() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    public static zzcbs zzF(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
        return queryLocalInterface instanceof zzcbs ? (zzcbs) queryLocalInterface : new zzcbq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzk((Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                parcel2.writeNoException();
                return true;
            case 3:
                zzr();
                parcel2.writeNoException();
                return true;
            case 4:
                zzp();
                parcel2.writeNoException();
                return true;
            case 5:
                zzn();
                parcel2.writeNoException();
                return true;
            case 6:
                Bundle bundle = (Bundle) zzaol.zza(parcel, Bundle.CREATOR);
                zzq(bundle);
                parcel2.writeNoException();
                zzaol.zze(parcel2, bundle);
                return true;
            case 7:
                zzs();
                parcel2.writeNoException();
                return true;
            case 8:
                zzl();
                parcel2.writeNoException();
                return true;
            case 9:
                zzv();
                parcel2.writeNoException();
                return true;
            case 10:
                zzh();
                parcel2.writeNoException();
                return true;
            case 11:
                boolean zzE = zzE();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzE);
                return true;
            case 12:
                parcel.readInt();
                parcel.readInt();
                Intent intent = (Intent) zzaol.zza(parcel, Intent.CREATOR);
                parcel2.writeNoException();
                return true;
            case 13:
                zzj(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 14:
                zzt();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
