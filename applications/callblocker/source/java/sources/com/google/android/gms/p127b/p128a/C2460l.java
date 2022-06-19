package com.google.android.gms.p127b.p128a;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.C2668u;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.b.a.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a/l.class */
public final class C2460l extends AbstractC2663a {
    public static final Parcelable.Creator<C2460l> CREATOR = new C2459k();

    /* renamed from: a */
    private final int f6990a;

    /* renamed from: b */
    private final C2579b f6991b;

    /* renamed from: c */
    private final C2668u f6992c;

    public C2460l(int i) {
        this(new C2579b(8, null), null);
    }

    public C2460l(int i, C2579b c2579b, C2668u c2668u) {
        this.f6990a = i;
        this.f6991b = c2579b;
        this.f6992c = c2668u;
    }

    private C2460l(C2579b c2579b, C2668u c2668u) {
        this(1, c2579b, null);
    }

    /* renamed from: a */
    public final C2579b m14480a() {
        return this.f6991b;
    }

    /* renamed from: b */
    public final C2668u m14479b() {
        return this.f6992c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f6990a);
        C2664b.m13937a(parcel, 2, (Parcelable) this.f6991b, i, false);
        C2664b.m13937a(parcel, 3, (Parcelable) this.f6992c, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
