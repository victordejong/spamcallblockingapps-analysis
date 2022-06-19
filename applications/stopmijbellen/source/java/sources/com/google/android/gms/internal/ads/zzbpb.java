package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpb.class */
public abstract class zzbpb extends zzaok implements zzbpc {
    public zzbpb() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzbpc zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof zzbpc ? (zzbpc) queryLocalInterface : new zzbpa(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String zzi = zzi(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 2:
                zzboi zzf = zzf(parcel.readString());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzf);
                return true;
            case 3:
                List<String> zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeStringList(zzj);
                return true;
            case 4:
                String zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeString(zzh);
                return true;
            case 5:
                zzm(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzn();
                parcel2.writeNoException();
                return true;
            case 7:
                zzbiz zze = zze();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zze);
                return true;
            case 8:
                zzk();
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper zzg = zzg();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzg);
                return true;
            case 10:
                boolean zzq = zzq(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzq);
                return true;
            case 11:
                parcel2.writeNoException();
                zzaol.zzf(parcel2, null);
                return true;
            case 12:
                boolean zzp = zzp();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzp);
                return true;
            case 13:
                boolean zzr = zzr();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzr);
                return true;
            case 14:
                zzo(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzl();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
