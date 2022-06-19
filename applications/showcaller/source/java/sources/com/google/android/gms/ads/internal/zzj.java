package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzj.class */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new C5633j();

    /* renamed from: d */
    public final boolean f18608d;

    /* renamed from: e */
    public final boolean f18609e;

    /* renamed from: f */
    public final String f18610f;

    /* renamed from: g */
    public final boolean f18611g;

    /* renamed from: h */
    public final float f18612h;

    /* renamed from: i */
    public final int f18613i;

    /* renamed from: j */
    public final boolean f18614j;

    /* renamed from: k */
    public final boolean f18615k;

    /* renamed from: l */
    public final boolean f18616l;

    public zzj(boolean z, boolean z2, String str, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this.f18608d = z;
        this.f18609e = z2;
        this.f18610f = str;
        this.f18611g = z3;
        this.f18612h = f;
        this.f18613i = i;
        this.f18614j = z4;
        this.f18615k = z5;
        this.f18616l = z6;
    }

    public zzj(boolean z, boolean z2, boolean z3, float f, int i, boolean z4, boolean z5, boolean z6) {
        this(z, z2, null, z3, f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 2, this.f18608d);
        C6170a.m16945c(parcel, 3, this.f18609e);
        C6170a.m16930r(parcel, 4, this.f18610f, false);
        C6170a.m16945c(parcel, 5, this.f18611g);
        C6170a.m16940h(parcel, 6, this.f18612h);
        C6170a.m16937k(parcel, 7, this.f18613i);
        C6170a.m16945c(parcel, 8, this.f18614j);
        C6170a.m16945c(parcel, 9, this.f18615k);
        C6170a.m16945c(parcel, 10, this.f18616l);
        C6170a.m16946b(parcel, m16947a);
    }
}
