package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbgd.class */
public abstract class zzbgd extends zzadk implements zzbge {
    public zzbgd() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbgo zzbgoVar;
        switch (i) {
            case 1:
                zze();
                parcel2.writeNoException();
                return true;
            case 2:
                zzf(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                zzg(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                zzh(zzadl.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                zzi(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzj(parcel.readString(), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float zzk = zzk();
                parcel2.writeNoException();
                parcel2.writeFloat(zzk);
                return true;
            case 8:
                boolean zzl = zzl();
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzl);
                return true;
            case 9:
                String zzm = zzm();
                parcel2.writeNoException();
                parcel2.writeString(zzm);
                return true;
            case 10:
                zzn(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zzo(zzbvf.zzg(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                zzp(zzbrr.zzc(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzbrl> zzq = zzq();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzq);
                return true;
            case 14:
                zzr((zzbim) zzadl.zzc(parcel, zzbim.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                zzs();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbgoVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    zzbgoVar = queryLocalInterface instanceof zzbgq ? (zzbgq) queryLocalInterface : new zzbgo(readStrongBinder);
                }
                zzt(zzbgoVar);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
