package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmk.class */
public abstract class zzbmk extends zzadk implements zzbml {
    public zzbmk() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static zzbml zzby(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        return queryLocalInterface instanceof zzbml ? (zzbml) queryLocalInterface : new zzbmj(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbmc zzbmcVar;
        switch (i) {
            case 1:
                zzb(parcel.readString(), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzc = zzc(parcel.readString());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzc);
                return true;
            case 3:
                zzd(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                zze();
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                parcel.readInt();
                parcel2.writeNoException();
                return true;
            case 6:
                zzg(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                zzbv(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbmcVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    zzbmcVar = queryLocalInterface instanceof zzbme ? (zzbme) queryLocalInterface : new zzbmc(readStrongBinder);
                }
                zzbw(zzbmcVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzbu(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
