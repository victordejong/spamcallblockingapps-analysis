package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbna.class */
public abstract class zzbna extends zzadk implements zzbnb {
    public zzbna() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzbnb zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof zzbnb ? (zzbnb) queryLocalInterface : new zzbmz(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String zze = zze(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 2:
                zzbmh zzf = zzf(parcel.readString());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzf);
                return true;
            case 3:
                List<String> zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeStringList(zzg);
                return true;
            case 4:
                String zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeString(zzh);
                return true;
            case 5:
                zzi(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzj();
                parcel2.writeNoException();
                return true;
            case 7:
                zzbhc zzk = zzk();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzk);
                return true;
            case 8:
                zzl();
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper zzm = zzm();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzm);
                return true;
            case 10:
                boolean zzn = zzn(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzn);
                return true;
            case 11:
                parcel2.writeNoException();
                zzadl.zzf(parcel2, null);
                return true;
            case 12:
                boolean zzo = zzo();
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzo);
                return true;
            case 13:
                boolean zzp = zzp();
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzp);
                return true;
            case 14:
                zzq(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzr();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
