package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqf.class */
public abstract class zzcqf extends zzaok implements zzcqg {
    public zzcqf() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzp((Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle zzd = zzd((Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzaol.zze(parcel2, zzd);
                return true;
            case 3:
                zzo(parcel.readString(), parcel.readString(), (Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                zzt(parcel.readString(), parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map zzk = zzk(parcel.readString(), parcel.readString(), zzaol.zzg(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(zzk);
                return true;
            case 6:
                int zzb = zzb(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zzb);
                return true;
            case 7:
                zzq((Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                zzm(parcel.readString(), parcel.readString(), (Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List zzj = zzj(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(zzj);
                return true;
            case 10:
                String zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeString(zzf);
                return true;
            case 11:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 12:
                long zzc = zzc();
                parcel2.writeNoException();
                parcel2.writeLong(zzc);
                return true;
            case 13:
                zzl(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                zzn(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 15:
                zzs(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                String zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeString(zzh);
                return true;
            case 17:
                String zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(zzg);
                return true;
            case 18:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 19:
                zzr((Bundle) zzaol.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
