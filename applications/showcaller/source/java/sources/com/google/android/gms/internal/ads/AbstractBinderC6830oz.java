package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.oz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oz.class */
public abstract class AbstractBinderC6830oz extends BinderC6649k2 implements AbstractC6867pz {
    public AbstractBinderC6830oz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo12087U(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
        } else if (i == 2) {
            mo12085c();
        } else if (i != 3) {
            return false;
        } else {
            mo12086Y(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
