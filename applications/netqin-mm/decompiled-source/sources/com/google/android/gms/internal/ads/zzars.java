package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzars.class */
public abstract class zzars extends zzgt implements zzart {
    public zzars() {
        super("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    /* renamed from: a */
    public static zzart m16393a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        return queryLocalInterface instanceof zzart ? (zzart) queryLocalInterface : new zzarv(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo16392b(parcel.createTypedArrayList(Uri.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            mo16391h(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
