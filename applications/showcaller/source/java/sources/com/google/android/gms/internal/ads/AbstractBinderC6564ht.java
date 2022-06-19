package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ht */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ht.class */
public abstract class AbstractBinderC6564ht extends BinderC6649k2 implements AbstractC6602it {
    public AbstractBinderC6564ht() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo8218S2((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        } else if (i == 2) {
            mo8216c();
        } else if (i == 3) {
            mo8214e();
        } else if (i == 4) {
            mo8217a();
        } else if (i != 5) {
            return false;
        } else {
            mo8215d();
        }
        parcel2.writeNoException();
        return true;
    }
}
