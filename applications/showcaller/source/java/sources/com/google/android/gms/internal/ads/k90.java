package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k90.class */
public abstract class k90 extends BinderC6649k2 implements l90 {
    public k90() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo11754E2(g80.m14974E6(parcel.readStrongBinder()));
        } else if (i == 2) {
            mo11753p(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo11752x((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
