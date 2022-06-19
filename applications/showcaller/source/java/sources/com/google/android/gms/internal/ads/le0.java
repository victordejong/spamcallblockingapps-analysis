package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/le0.class */
public abstract class le0 extends BinderC6649k2 implements me0 {
    public le0() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo10716a();
        } else if (i == 2) {
            mo10717A(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            mo10715x((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
