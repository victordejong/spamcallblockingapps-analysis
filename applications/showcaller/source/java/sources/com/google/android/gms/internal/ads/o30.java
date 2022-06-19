package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o30.class */
public abstract class o30 extends BinderC6649k2 implements p30 {
    public o30() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo11728U0((ParcelFileDescriptor) C6686l2.m13744c(parcel, ParcelFileDescriptor.CREATOR));
            return true;
        }
        return false;
    }
}
