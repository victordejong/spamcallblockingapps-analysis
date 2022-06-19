package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elx.class */
public abstract class elx extends dvd implements ely {
    public elx() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    /* renamed from: a */
    public static ely m14802a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        return queryLocalInterface instanceof ely ? (ely) queryLocalInterface : new ema(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String a = mo14714a();
            parcel2.writeNoException();
            parcel2.writeString(a);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            String b = mo14713b();
            parcel2.writeNoException();
            parcel2.writeString(b);
            return true;
        }
    }
}
