package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrz.class */
public abstract class zzbrz extends zzadk implements zzbsa {
    public zzbrz() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbsb zzbsbVar;
        if (i == 3) {
            zzbhc zzb = zzb();
            parcel2.writeNoException();
            zzadl.zzf(parcel2, zzb);
            return true;
        } else if (i == 4) {
            zzc();
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            IObjectWrapper m38750m1 = IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbsbVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzbsbVar = queryLocalInterface instanceof zzbsd ? (zzbsd) queryLocalInterface : new zzbsb(readStrongBinder);
            }
            zzd(m38750m1, zzbsbVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zze(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            zzbme zzf = zzf();
            parcel2.writeNoException();
            zzadl.zzf(parcel2, zzf);
            return true;
        }
    }
}
