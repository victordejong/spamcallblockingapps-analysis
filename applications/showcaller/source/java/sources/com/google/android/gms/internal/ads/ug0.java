package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ug0.class */
public abstract class ug0 extends BinderC6649k2 implements vg0 {
    public ug0() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            parcel.readString();
            parcel.readString();
        } else if (i == 2) {
            mo10026r(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo10027N1(parcel.readString(), parcel.readString(), (Bundle) C6686l2.m13744c(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
