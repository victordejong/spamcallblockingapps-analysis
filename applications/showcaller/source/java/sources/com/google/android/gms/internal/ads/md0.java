package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/md0.class */
public abstract class md0 extends BinderC6649k2 implements nd0 {
    public md0() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String mo12951b = mo12951b();
            parcel2.writeNoException();
            parcel2.writeString(mo12951b);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int mo12950c = mo12950c();
            parcel2.writeNoException();
            parcel2.writeInt(mo12950c);
            return true;
        }
    }
}
