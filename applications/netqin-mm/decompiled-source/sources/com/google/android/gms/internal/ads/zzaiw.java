package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaiw.class */
public abstract class zzaiw extends zzgt implements zzait {
    public zzaiw() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    /* renamed from: a */
    public static zzait m16733a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        return queryLocalInterface instanceof zzait ? (zzait) queryLocalInterface : new zzaiv(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo10990f(parcel.createTypedArrayList(zzaiq.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
