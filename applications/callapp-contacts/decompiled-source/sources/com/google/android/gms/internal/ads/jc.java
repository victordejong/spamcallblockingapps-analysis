package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jc.class */
public abstract class jc extends dvd implements iz {
    public jc() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        je jeVar;
        if (i == 3) {
            emk b2 = b();
            parcel2.writeNoException();
            dvc.a(parcel2, b2);
            return true;
        } else if (i == 4) {
            c();
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            b a2 = b.a.a(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                jeVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                jeVar = queryLocalInterface instanceof je ? (je) queryLocalInterface : new jg(readStrongBinder);
            }
            a(a2, jeVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            a(b.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            dq d2 = d();
            parcel2.writeNoException();
            dvc.a(parcel2, d2);
            return true;
        }
    }
}
