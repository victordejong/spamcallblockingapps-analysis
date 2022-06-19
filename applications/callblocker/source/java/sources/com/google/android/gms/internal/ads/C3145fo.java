package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.ads.fo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fo.class */
public final class C3145fo extends AbstractC2663a {
    public static final Parcelable.Creator<C3145fo> CREATOR = new C3148fr();

    /* renamed from: a */
    public final boolean f16669a;

    /* renamed from: b */
    public final String f16670b;

    /* renamed from: c */
    public final int f16671c;

    /* renamed from: d */
    public final byte[] f16672d;

    /* renamed from: e */
    public final String[] f16673e;

    /* renamed from: f */
    public final String[] f16674f;

    /* renamed from: g */
    public final boolean f16675g;

    /* renamed from: h */
    public final long f16676h;

    public C3145fo(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.f16669a = z;
        this.f16670b = str;
        this.f16671c = i;
        this.f16672d = bArr;
        this.f16673e = strArr;
        this.f16674f = strArr2;
        this.f16675g = z2;
        this.f16676h = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13930a(parcel, 1, this.f16669a);
        C2664b.m13932a(parcel, 2, this.f16670b, false);
        C2664b.m13941a(parcel, 3, this.f16671c);
        C2664b.m13929a(parcel, 4, this.f16672d, false);
        C2664b.m13927a(parcel, 5, this.f16673e, false);
        C2664b.m13927a(parcel, 6, this.f16674f, false);
        C2664b.m13930a(parcel, 7, this.f16675g);
        C2664b.m13940a(parcel, 8, this.f16676h);
        C2664b.m13943a(parcel, m13944a);
    }
}
