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
            mo14627a((zzvq) dvc.m15675a(parcel, zzvq.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            String b = mo14625b();
            parcel2.writeNoException();
            parcel2.writeString(b);
            return true;
        } else if (i == 3) {
            boolean a = mo14628a();
            parcel2.writeNoException();
            dvc.m15673a(parcel2, a);
            return true;
        } else if (i == 4) {
            String c = mo14624c();
            parcel2.writeNoException();
            parcel2.writeString(c);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            mo14626a((zzvq) dvc.m15675a(parcel, zzvq.CREATOR), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }
}
