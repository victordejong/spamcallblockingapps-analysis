package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmv.class */
public abstract class zzbmv extends zzadk implements zzbmw {
    public zzbmv() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                IObjectWrapper zzb = zzb();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzb);
                return true;
            case 3:
                String zzc = zzc();
                parcel2.writeNoException();
                parcel2.writeString(zzc);
                return true;
            case 4:
                List zzd = zzd();
                parcel2.writeNoException();
                parcel2.writeList(zzd);
                return true;
            case 5:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 6:
                zzbmh zzf = zzf();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzf);
                return true;
            case 7:
                String zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(zzg);
                return true;
            case 8:
                double zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeDouble(zzh);
                return true;
            case 9:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 10:
                String zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            case 11:
                Bundle zzk = zzk();
                parcel2.writeNoException();
                zzadl.zze(parcel2, zzk);
                return true;
            case 12:
                zzl();
                parcel2.writeNoException();
                return true;
            case 13:
                zzbhc zzm = zzm();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzm);
                return true;
            case 14:
                zzn((Bundle) zzadl.zzc(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zzo = zzo((Bundle) zzadl.zzc(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzo);
                return true;
            case 16:
                zzp((Bundle) zzadl.zzc(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                zzblz zzq = zzq();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzq);
                return true;
            case 18:
                IObjectWrapper zzr = zzr();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzr);
                return true;
            case 19:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            default:
                return false;
        }
    }
}
