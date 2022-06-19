package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z30.class */
public abstract class z30 extends BinderC6649k2 implements a40 {
    public z30() {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    /* renamed from: E6 */
    public static a40 m8532E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        return queryLocalInterface instanceof a40 ? (a40) queryLocalInterface : new y30(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            mo10276a();
        } else if (i != 3) {
            return false;
        } else {
            mo8968p(parcel.readString());
        }
        parcel2.writeNoException();
        return true;
    }
}
