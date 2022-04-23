package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oi.class */
public abstract class oi extends dvd implements of {
    public oi() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        mt mtVar;
        if (i == 1) {
            a(b.a.a(parcel.readStrongBinder()));
        } else if (i == 2) {
            a(parcel.readString());
        } else if (i == 3) {
            a((zzvh) dvc.a(parcel, zzvh.CREATOR));
        } else if (i != 4) {
            return false;
        } else {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                mtVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
                mtVar = queryLocalInterface instanceof mt ? (mt) queryLocalInterface : new mv(readStrongBinder);
            }
            a(mtVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
