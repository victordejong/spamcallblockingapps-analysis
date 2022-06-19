package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t90.class */
public abstract class t90 extends BinderC6649k2 implements u90 {
    public t90() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo8973B(parcel.readString());
        } else if (i == 2) {
            mo8971p(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo8970x((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
