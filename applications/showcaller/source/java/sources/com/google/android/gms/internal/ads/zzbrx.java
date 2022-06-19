package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrx.class */
public final class zzbrx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbrx> CREATOR = new h40();

    /* renamed from: d */
    public final int f33742d;

    /* renamed from: e */
    public final int f33743e;

    /* renamed from: f */
    public final String f33744f;

    /* renamed from: g */
    public final int f33745g;

    public zzbrx(int i, int i2, String str, int i3) {
        this.f33742d = i;
        this.f33743e = i2;
        this.f33744f = str;
        this.f33745g = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33743e);
        C6170a.m16930r(parcel, 2, this.f33744f, false);
        C6170a.m16937k(parcel, 3, this.f33745g);
        C6170a.m16937k(parcel, 1000, this.f33742d);
        C6170a.m16946b(parcel, m16947a);
    }
}
