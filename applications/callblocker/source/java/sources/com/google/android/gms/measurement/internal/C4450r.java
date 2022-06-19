package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.measurement.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r.class */
public final class C4450r extends AbstractC2663a {
    public static final Parcelable.Creator<C4450r> CREATOR = new C4449q();

    /* renamed from: a */
    public final String f19386a;

    /* renamed from: b */
    public final C4445m f19387b;

    /* renamed from: c */
    public final String f19388c;

    /* renamed from: d */
    public final long f19389d;

    public C4450r(C4450r c4450r, long j) {
        C2662s.m13981a(c4450r);
        this.f19386a = c4450r.f19386a;
        this.f19387b = c4450r.f19387b;
        this.f19388c = c4450r.f19388c;
        this.f19389d = j;
    }

    public C4450r(String str, C4445m c4445m, String str2, long j) {
        this.f19386a = str;
        this.f19387b = c4445m;
        this.f19388c = str2;
        this.f19389d = j;
    }

    public final String toString() {
        String str = this.f19388c;
        String str2 = this.f19386a;
        String valueOf = String.valueOf(this.f19387b);
        return new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length()).append("origin=").append(str).append(",name=").append(str2).append(",params=").append(valueOf).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f19386a, false);
        C2664b.m13937a(parcel, 3, (Parcelable) this.f19387b, i, false);
        C2664b.m13932a(parcel, 4, this.f19388c, false);
        C2664b.m13940a(parcel, 5, this.f19389d);
        C2664b.m13943a(parcel, m13944a);
    }
}
