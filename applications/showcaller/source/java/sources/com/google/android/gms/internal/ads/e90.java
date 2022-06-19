package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e90.class */
public abstract class e90 extends BinderC6649k2 implements f90 {
    public e90() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo8150E(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()));
        } else if (i == 2) {
            mo8148p(parcel.readString());
        } else if (i == 3) {
            mo8147x((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
        } else if (i != 4) {
            return false;
        } else {
            mo8149m5(a80.m16674E6(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
