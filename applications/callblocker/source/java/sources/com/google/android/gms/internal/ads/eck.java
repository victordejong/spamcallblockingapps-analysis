package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.p124g.C2295a;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eck.class */
public final class eck extends AbstractC2663a {
    public static final Parcelable.Creator<eck> CREATOR = new ecm();

    /* renamed from: a */
    public final String f16287a;

    public eck(C2295a c2295a) {
        this.f16287a = c2295a.m14813a();
    }

    public eck(String str) {
        this.f16287a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 15, this.f16287a, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
