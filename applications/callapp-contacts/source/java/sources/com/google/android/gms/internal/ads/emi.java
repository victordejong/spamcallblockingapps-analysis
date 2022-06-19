package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emi.class */
public abstract class emi extends dvd implements emj {
    public emi() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    /* renamed from: a */
    public static emj m14784a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        return queryLocalInterface instanceof emj ? (emj) queryLocalInterface : new eml(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String a = mo14783a();
            parcel2.writeNoException();
            parcel2.writeString(a);
            return true;
        } else if (i == 2) {
            String b = mo14782b();
            parcel2.writeNoException();
            parcel2.writeString(b);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<zzvx> c = mo14781c();
            parcel2.writeNoException();
            parcel2.writeTypedList(c);
            return true;
        }
    }
}
