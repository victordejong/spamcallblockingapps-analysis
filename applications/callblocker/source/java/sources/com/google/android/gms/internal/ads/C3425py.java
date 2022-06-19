package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.ads.py */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/py.class */
public final class C3425py extends AbstractC2663a {
    public static final Parcelable.Creator<C3425py> CREATOR = new C3429qb();

    /* renamed from: a */
    String f17209a;

    public C3425py(String str) {
        this.f17209a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f17209a, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
