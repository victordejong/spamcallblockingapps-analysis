package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c40.class */
public abstract class c40 extends BinderC6649k2 implements d40 {
    public c40() {
        super("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    /* renamed from: E6 */
    public static d40 m16122E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
        return queryLocalInterface instanceof d40 ? (d40) queryLocalInterface : new b40(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo9865U4(parcel.createTypedArrayList(zzbrl.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
