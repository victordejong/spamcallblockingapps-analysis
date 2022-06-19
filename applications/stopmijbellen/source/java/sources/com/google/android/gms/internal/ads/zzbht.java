package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbht.class */
public abstract class zzbht extends zzaok implements zzbhu {
    public zzbht() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzbhk zzd = zzd(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR), parcel.readString(), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzd);
                return true;
            case 2:
                zzbhk zze = zze(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR), parcel.readString(), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zze);
                return true;
            case 3:
                zzbhg zzb = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzb);
                return true;
            case 4:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, null);
                return true;
            case 5:
                zzbom zzh = zzh(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzh);
                return true;
            case 6:
                zzcej zzm = zzm(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzm);
                return true;
            case 7:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, null);
                return true;
            case 8:
                zzcbs zzl = zzl(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzl);
                return true;
            case 9:
                zzbib zzg = zzg(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzg);
                return true;
            case 10:
                zzbhk zzf = zzf(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzf);
                return true;
            case 11:
                zzbos zzi = zzi(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzi);
                return true;
            case 12:
                zzcez zzn = zzn(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzn);
                return true;
            case 13:
                zzbhk zzc = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR), parcel.readString(), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzc);
                return true;
            case 14:
                zzcht zzo = zzo(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzo);
                return true;
            case 15:
                zzcbg zzk = zzk(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzk);
                return true;
            case 16:
                zzbsr zzj = zzj(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzbxg.zzg(parcel.readStrongBinder()), parcel.readInt(), zzbsn.zzc(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzj);
                return true;
            default:
                return false;
        }
    }
}
