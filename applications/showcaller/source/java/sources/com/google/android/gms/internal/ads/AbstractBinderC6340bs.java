package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.bs */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bs.class */
public abstract class AbstractBinderC6340bs extends BinderC6649k2 implements AbstractC6377cs {
    public AbstractBinderC6340bs() {
        super("com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo13457b();
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
