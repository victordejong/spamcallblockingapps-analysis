package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbia.class */
public abstract class zzbia extends zzaok implements zzbib {
    public zzbia() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbil zzbilVar;
        switch (i) {
            case 1:
                zzj();
                parcel2.writeNoException();
                return true;
            case 2:
                zzp(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                zzq(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                zzo(zzaol.zzg(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                zzm(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzk(parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float zze = zze();
                parcel2.writeNoException();
                parcel2.writeFloat(zze);
                return true;
            case 8:
                boolean zzt = zzt();
                parcel2.writeNoException();
                zzaol.zzc(parcel2, zzt);
                return true;
            case 9:
                String zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeString(zzf);
                return true;
            case 10:
                zzh(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zzn(zzbxg.zzg(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                zzr(zzbtt.zzc(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzbtn> zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzg);
                return true;
            case 14:
                zzs((zzbkk) zzaol.zza(parcel, zzbkk.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                zzi();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbilVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    zzbilVar = queryLocalInterface instanceof zzbin ? (zzbin) queryLocalInterface : new zzbil(readStrongBinder);
                }
                zzl(zzbilVar);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
