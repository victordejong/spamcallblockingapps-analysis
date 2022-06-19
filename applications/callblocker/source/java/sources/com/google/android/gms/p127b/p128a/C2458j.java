package com.google.android.gms.p127b.p128a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C2667t;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.b.a.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a/j.class */
public final class C2458j extends AbstractC2663a {
    public static final Parcelable.Creator<C2458j> CREATOR = new C2457i();

    /* renamed from: a */
    private final int f6988a;

    /* renamed from: b */
    private final C2667t f6989b;

    public C2458j(int i, C2667t c2667t) {
        this.f6988a = i;
        this.f6989b = c2667t;
    }

    public C2458j(C2667t c2667t) {
        this(1, c2667t);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f6988a);
        C2664b.m13937a(parcel, 2, (Parcelable) this.f6989b, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
