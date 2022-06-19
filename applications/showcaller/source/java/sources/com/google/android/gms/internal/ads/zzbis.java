package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.C5848t;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbis.class */
public final class zzbis extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbis> CREATOR = new C6937rv();

    /* renamed from: d */
    public final boolean f33712d;

    /* renamed from: e */
    public final boolean f33713e;

    /* renamed from: f */
    public final boolean f33714f;

    public zzbis(C5848t c5848t) {
        this(c5848t.m17761c(), c5848t.m17762b(), c5848t.m17763a());
    }

    public zzbis(boolean z, boolean z2, boolean z3) {
        this.f33712d = z;
        this.f33713e = z2;
        this.f33714f = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 2, this.f33712d);
        C6170a.m16945c(parcel, 3, this.f33713e);
        C6170a.m16945c(parcel, 4, this.f33714f);
        C6170a.m16946b(parcel, m16947a);
    }
}
