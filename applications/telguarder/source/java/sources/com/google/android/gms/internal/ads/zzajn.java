package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajn.class */
public abstract class zzajn extends zzgy implements zzajk {
    public zzajn() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    public static zzajk zzaa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        return queryLocalInterface instanceof zzajk ? (zzajk) queryLocalInterface : new zzajm(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zze(parcel.createTypedArrayList(zzajh.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
