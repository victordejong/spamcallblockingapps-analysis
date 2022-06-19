package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxv.class */
public abstract class zzaxv extends zzadk implements zzaxw {
    public zzaxv() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzaya zzayaVar;
        zzayb zzaybVar;
        switch (i) {
            case 2:
                zzbfn zze = zze();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zze);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzayaVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    zzayaVar = queryLocalInterface instanceof zzaya ? (zzaya) queryLocalInterface : new zzaya(readStrongBinder);
                }
                zzj(zzayaVar);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper m38750m1 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzaybVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    zzaybVar = queryLocalInterface2 instanceof zzayd ? (zzayd) queryLocalInterface2 : new zzayb(readStrongBinder2);
                }
                zzf(m38750m1, zzaybVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbgz zzg = zzg();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzg);
                return true;
            case 6:
                zzh(zzadl.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 7:
                zzi(zzbgv.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
