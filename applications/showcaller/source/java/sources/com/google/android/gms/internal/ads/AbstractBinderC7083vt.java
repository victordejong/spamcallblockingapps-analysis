package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.vt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vt.class */
public abstract class AbstractBinderC7083vt extends BinderC6649k2 implements AbstractC7120wt {
    public AbstractBinderC7083vt() {
        super("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo9463h0((zzbcz) C6686l2.m13744c(parcel, zzbcz.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
