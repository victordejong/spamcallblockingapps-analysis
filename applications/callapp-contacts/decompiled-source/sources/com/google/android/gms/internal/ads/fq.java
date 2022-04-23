package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fq.class */
public abstract class fq extends dvd implements fn {
    public fq() {
        super("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    public static fn a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
        return queryLocalInterface instanceof fn ? (fn) queryLocalInterface : new fp(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 2) {
            return false;
        }
        boolean a2 = a(b.a.a(parcel.readStrongBinder()));
        parcel2.writeNoException();
        dvc.a(parcel2, a2);
        return true;
    }
}
