package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dxu.class */
public final class dxu extends AbstractC2663a {
    public static final Parcelable.Creator<dxu> CREATOR = new dxt();

    /* renamed from: a */
    public final String f16043a;

    /* renamed from: b */
    public final String f16044b;

    public dxu(String str, String str2) {
        this.f16043a = str;
        this.f16044b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f16043a, false);
        C2664b.m13932a(parcel, 2, this.f16044b, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
