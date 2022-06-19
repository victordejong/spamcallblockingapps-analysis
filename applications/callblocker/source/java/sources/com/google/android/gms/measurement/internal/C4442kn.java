package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.measurement.internal.kn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/kn.class */
public final class C4442kn extends AbstractC2663a {
    public static final Parcelable.Creator<C4442kn> CREATOR = new C4441km();

    /* renamed from: a */
    public String f19354a;

    /* renamed from: b */
    public String f19355b;

    /* renamed from: c */
    public C4423jv f19356c;

    /* renamed from: d */
    public long f19357d;

    /* renamed from: e */
    public boolean f19358e;

    /* renamed from: f */
    public String f19359f;

    /* renamed from: g */
    public C4450r f19360g;

    /* renamed from: h */
    public long f19361h;

    /* renamed from: i */
    public C4450r f19362i;

    /* renamed from: j */
    public long f19363j;

    /* renamed from: k */
    public C4450r f19364k;

    public C4442kn(C4442kn c4442kn) {
        C2662s.m13981a(c4442kn);
        this.f19354a = c4442kn.f19354a;
        this.f19355b = c4442kn.f19355b;
        this.f19356c = c4442kn.f19356c;
        this.f19357d = c4442kn.f19357d;
        this.f19358e = c4442kn.f19358e;
        this.f19359f = c4442kn.f19359f;
        this.f19360g = c4442kn.f19360g;
        this.f19361h = c4442kn.f19361h;
        this.f19362i = c4442kn.f19362i;
        this.f19363j = c4442kn.f19363j;
        this.f19364k = c4442kn.f19364k;
    }

    public C4442kn(String str, String str2, C4423jv c4423jv, long j, boolean z, String str3, C4450r c4450r, long j2, C4450r c4450r2, long j3, C4450r c4450r3) {
        this.f19354a = str;
        this.f19355b = str2;
        this.f19356c = c4423jv;
        this.f19357d = j;
        this.f19358e = z;
        this.f19359f = str3;
        this.f19360g = c4450r;
        this.f19361h = j2;
        this.f19362i = c4450r2;
        this.f19363j = j3;
        this.f19364k = c4450r3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f19354a, false);
        C2664b.m13932a(parcel, 3, this.f19355b, false);
        C2664b.m13937a(parcel, 4, (Parcelable) this.f19356c, i, false);
        C2664b.m13940a(parcel, 5, this.f19357d);
        C2664b.m13930a(parcel, 6, this.f19358e);
        C2664b.m13932a(parcel, 7, this.f19359f, false);
        C2664b.m13937a(parcel, 8, (Parcelable) this.f19360g, i, false);
        C2664b.m13940a(parcel, 9, this.f19361h);
        C2664b.m13937a(parcel, 10, (Parcelable) this.f19362i, i, false);
        C2664b.m13940a(parcel, 11, this.f19363j);
        C2664b.m13937a(parcel, 12, (Parcelable) this.f19364k, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
