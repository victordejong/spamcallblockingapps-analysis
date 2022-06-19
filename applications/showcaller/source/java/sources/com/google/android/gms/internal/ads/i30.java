package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i30.class */
public abstract class i30 extends BinderC6649k2 implements j30 {
    public i30() {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo8754B(parcel.readString());
        } else if (i != 2) {
            return false;
        } else {
            mo8752d();
        }
        parcel2.writeNoException();
        return true;
    }
}
