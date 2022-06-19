package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
/* renamed from: com.google.android.gms.internal.ads.ft */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ft.class */
public abstract class AbstractBinderC3150ft extends dkl implements AbstractC3147fq {
    public AbstractBinderC3150ft() {
        super("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheCallback");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        if (i == 1) {
            mo7820a((ParcelFileDescriptor) dkk.m9323a(parcel, ParcelFileDescriptor.CREATOR));
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
