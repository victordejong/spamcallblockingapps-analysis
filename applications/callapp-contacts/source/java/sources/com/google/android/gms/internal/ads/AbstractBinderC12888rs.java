package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.rs */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rs.class */
public abstract class AbstractBinderC12888rs extends dvd implements AbstractC12884ro {
    public AbstractBinderC12888rs() {
        super("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    /* renamed from: a */
    public static AbstractC12884ro m14207a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        return queryLocalInterface instanceof AbstractC12884ro ? (AbstractC12884ro) queryLocalInterface : new C12887rr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14204a(parcel.createTypedArrayList(Uri.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            mo14205a(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
