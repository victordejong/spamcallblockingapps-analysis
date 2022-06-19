package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnm.class */
public final class cnm extends AbstractC2663a {
    public static final Parcelable.Creator<cnm> CREATOR = new cnl();

    /* renamed from: a */
    private final int f13402a;

    /* renamed from: b */
    private final int f13403b;

    /* renamed from: c */
    private final String f13404c;

    /* renamed from: d */
    private final String f13405d;

    /* renamed from: e */
    private final int f13406e;

    public cnm(int i, int i2, int i3, String str, String str2) {
        this.f13402a = i;
        this.f13403b = i2;
        this.f13404c = str;
        this.f13405d = str2;
        this.f13406e = i3;
    }

    public cnm(int i, dkc dkcVar, String str, String str2) {
        this(1, i, dkcVar.mo8208a(), str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f13402a);
        C2664b.m13941a(parcel, 2, this.f13403b);
        C2664b.m13932a(parcel, 3, this.f13404c, false);
        C2664b.m13932a(parcel, 4, this.f13405d, false);
        C2664b.m13941a(parcel, 5, this.f13406e);
        C2664b.m13943a(parcel, m13944a);
    }
}
