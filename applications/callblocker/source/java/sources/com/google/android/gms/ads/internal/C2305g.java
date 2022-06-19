package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.ads.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/g.class */
public final class C2305g extends AbstractC2663a {
    public static final Parcelable.Creator<C2305g> CREATOR = new C2308j();

    /* renamed from: a */
    public final boolean f6640a;

    /* renamed from: b */
    public final boolean f6641b;

    /* renamed from: c */
    public final boolean f6642c;

    /* renamed from: d */
    public final float f6643d;

    /* renamed from: e */
    public final int f6644e;

    /* renamed from: f */
    public final boolean f6645f;

    /* renamed from: g */
    public final boolean f6646g;

    /* renamed from: h */
    public final boolean f6647h;

    /* renamed from: i */
    private final String f6648i;

    public C2305g(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.f6640a = z;
        this.f6641b = z2;
        this.f6648i = str;
        this.f6642c = z3;
        this.f6643d = f;
        this.f6644e = i;
        this.f6645f = z4;
        this.f6646g = z5;
        this.f6647h = z6;
    }

    public C2305g(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(false, z2, null, false, 0.0f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13930a(parcel, 2, this.f6640a);
        C2664b.m13930a(parcel, 3, this.f6641b);
        C2664b.m13932a(parcel, 4, this.f6648i, false);
        C2664b.m13930a(parcel, 5, this.f6642c);
        C2664b.m13942a(parcel, 6, this.f6643d);
        C2664b.m13941a(parcel, 7, this.f6644e);
        C2664b.m13930a(parcel, 8, this.f6645f);
        C2664b.m13930a(parcel, 9, this.f6646g);
        C2664b.m13930a(parcel, 10, this.f6647h);
        C2664b.m13943a(parcel, m13944a);
    }
}
