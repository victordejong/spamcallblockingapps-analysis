package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmd.class */
public abstract class zzbmd extends zzadk implements zzbme {
    public zzbmd() {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbnp zzbnpVar;
        switch (i) {
            case 2:
                float zze = zze();
                parcel2.writeNoException();
                parcel2.writeFloat(zze);
                return true;
            case 3:
                zzf(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper zzg = zzg();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzg);
                return true;
            case 5:
                float zzh = zzh();
                parcel2.writeNoException();
                parcel2.writeFloat(zzh);
                return true;
            case 6:
                float zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeFloat(zzi);
                return true;
            case 7:
                zzbhc zzj = zzj();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzj);
                return true;
            case 8:
                boolean zzk = zzk();
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzk);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbnpVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    zzbnpVar = queryLocalInterface instanceof zzbnp ? (zzbnp) queryLocalInterface : new zzbnp(readStrongBinder);
                }
                zzl(zzbnpVar);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
