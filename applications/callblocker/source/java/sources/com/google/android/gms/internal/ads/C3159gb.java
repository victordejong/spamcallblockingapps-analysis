package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.ads.gb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gb.class */
public final class C3159gb extends AbstractC2663a {
    public static final Parcelable.Creator<C3159gb> CREATOR = new C3162ge();

    /* renamed from: a */
    public final String f16684a;

    /* renamed from: b */
    public final boolean f16685b;

    /* renamed from: c */
    public final int f16686c;

    /* renamed from: d */
    public final String f16687d;

    public C3159gb(String str, boolean z, int i, String str2) {
        this.f16684a = str;
        this.f16685b = z;
        this.f16686c = i;
        this.f16687d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f16684a, false);
        C2664b.m13930a(parcel, 2, this.f16685b);
        C2664b.m13941a(parcel, 3, this.f16686c);
        C2664b.m13932a(parcel, 4, this.f16687d, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
