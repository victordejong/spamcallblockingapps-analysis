package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekn.class */
public abstract class ekn extends dvd implements eko {
    public ekn() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a((zzvq) dvc.a(parcel, zzvq.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            String b2 = b();
            parcel2.writeNoException();
            parcel2.writeString(b2);
            return true;
        } else if (i == 3) {
            boolean a2 = a();
            parcel2.writeNoException();
            dvc.a(parcel2, a2);
            return true;
        } else if (i == 4) {
            String c2 = c();
            parcel2.writeNoException();
            parcel2.writeString(c2);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            a((zzvq) dvc.a(parcel, zzvq.CREATOR), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }
}
