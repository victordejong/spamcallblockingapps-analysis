package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.is */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/is.class */
public abstract class AbstractBinderC6601is extends BinderC6649k2 implements AbstractC6638js {
    public AbstractBinderC6601is() {
        super("com.google.android.gms.ads.internal.client.IAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo11828b();
        } else if (i != 2) {
            return false;
        } else {
            mo11827l2((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
