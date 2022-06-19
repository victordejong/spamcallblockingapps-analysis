package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyy.class */
public abstract class dyy extends dkl implements dyz {
    public dyy() {
        super("com.google.android.gms.ads.internal.client.IAdClickListener");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = true;
        if (i == 1) {
            mo8140a();
            parcel2.writeNoException();
        } else {
            z = false;
        }
        return z;
    }
}
