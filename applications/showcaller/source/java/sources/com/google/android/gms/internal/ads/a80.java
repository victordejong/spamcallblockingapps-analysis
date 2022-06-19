package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a80.class */
public abstract class a80 extends BinderC6649k2 implements b80 {
    public a80() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    /* renamed from: E6 */
    public static b80 m16674E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
        return queryLocalInterface instanceof b80 ? (b80) queryLocalInterface : new z70(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            AbstractC6253a mo8498a = mo8498a();
            parcel2.writeNoException();
            C6686l2.m13741f(parcel2, mo8498a);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            boolean mo8497d = mo8497d();
            parcel2.writeNoException();
            C6686l2.m13745b(parcel2, mo8497d);
            return true;
        }
    }
}
