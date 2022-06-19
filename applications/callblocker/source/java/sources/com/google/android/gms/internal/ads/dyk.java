package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyk.class */
public final class dyk extends AbstractC2663a {
    public static final Parcelable.Creator<dyk> CREATOR = new dyj();

    /* renamed from: a */
    public final int f16110a;

    public dyk(int i) {
        this.f16110a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 2, this.f16110a);
        C2664b.m13943a(parcel, m13944a);
    }
}
