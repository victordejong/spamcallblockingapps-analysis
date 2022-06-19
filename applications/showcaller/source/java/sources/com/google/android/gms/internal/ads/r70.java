package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r70.class */
public abstract class r70 extends BinderC6649k2 implements s70 {
    public r70() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    /* renamed from: E6 */
    public static s70 m11673E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof s70 ? (s70) queryLocalInterface : new q70(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            v70 mo11102r = mo11102r(parcel.readString());
            parcel2.writeNoException();
            C6686l2.m13741f(parcel2, mo11102r);
            return true;
        } else if (i == 2) {
            boolean mo11101y = mo11101y(parcel.readString());
            parcel2.writeNoException();
            C6686l2.m13745b(parcel2, mo11101y);
            return true;
        } else if (i == 3) {
            r90 mo11103p = mo11103p(parcel.readString());
            parcel2.writeNoException();
            C6686l2.m13741f(parcel2, mo11103p);
            return true;
        } else if (i != 4) {
            return false;
        } else {
            boolean mo11104P2 = mo11104P2(parcel.readString());
            parcel2.writeNoException();
            C6686l2.m13745b(parcel2, mo11104P2);
            return true;
        }
    }
}
