package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfm.class */
public abstract class zzcfm extends zzadk implements zzcfn {
    public zzcfm() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    public static zzcfn zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        return queryLocalInterface instanceof zzcfn ? (zzcfn) queryLocalInterface : new zzcfl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcfi zzcfiVar;
        switch (i) {
            case 1:
                IObjectWrapper m38750m1 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                zzcfr zzcfrVar = (zzcfr) zzadl.zzc(parcel, zzcfr.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcfiVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    zzcfiVar = queryLocalInterface instanceof zzcfk ? (zzcfk) queryLocalInterface : new zzcfi(readStrongBinder);
                }
                zze(m38750m1, zzcfrVar, zzcfiVar);
                parcel2.writeNoException();
                return true;
            case 2:
                zzf(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, null);
                return true;
            case 4:
                IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, null);
                return true;
            case 5:
                zzg(parcel.createTypedArrayList(Uri.CREATOR), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzcae.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                zzh(parcel.createTypedArrayList(Uri.CREATOR), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzcae.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                zzi((zzcam) zzadl.zzc(parcel, zzcam.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                zzj(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
