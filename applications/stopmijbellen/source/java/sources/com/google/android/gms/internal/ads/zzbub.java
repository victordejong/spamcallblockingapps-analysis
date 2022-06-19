package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbub.class */
public abstract class zzbub extends zzaok implements zzbuc {
    public zzbub() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbud zzbudVar;
        if (i == 3) {
            zzbiz zzb = zzb();
            parcel2.writeNoException();
            zzaol.zzf(parcel2, zzb);
            return true;
        } else if (i == 4) {
            zzd();
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbudVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzbudVar = queryLocalInterface instanceof zzbuf ? (zzbuf) queryLocalInterface : new zzbud(readStrongBinder);
            }
            zzf(asInterface, zzbudVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zze(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            zzbof zzc = zzc();
            parcel2.writeNoException();
            zzaol.zzf(parcel2, zzc);
            return true;
        }
    }
}
