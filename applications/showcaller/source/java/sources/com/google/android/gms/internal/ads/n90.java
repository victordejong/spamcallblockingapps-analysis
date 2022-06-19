package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n90.class */
public abstract class n90 extends BinderC6649k2 implements o90 {
    public n90() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            mo12708a();
        } else if (i == 3) {
            mo12707p(parcel.readString());
        } else if (i != 4) {
            return false;
        } else {
            mo12706x((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
