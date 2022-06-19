package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjz.class */
public final class zzfjz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfjz> CREATOR = new bt2();

    /* renamed from: d */
    public final int f34014d;

    /* renamed from: e */
    public final int f34015e;

    /* renamed from: f */
    public final String f34016f;

    /* renamed from: g */
    public final String f34017g;

    /* renamed from: h */
    public final int f34018h;

    public zzfjz(int i, int i2, int i3, String str, String str2) {
        this.f34014d = i;
        this.f34015e = i2;
        this.f34016f = str;
        this.f34017g = str2;
        this.f34018h = i3;
    }

    public zzfjz(int i, int i2, String str, String str2) {
        this(1, 1, i2 - 1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34014d);
        C6170a.m16937k(parcel, 2, this.f34015e);
        C6170a.m16930r(parcel, 3, this.f34016f, false);
        C6170a.m16930r(parcel, 4, this.f34017g, false);
        C6170a.m16937k(parcel, 5, this.f34018h);
        C6170a.m16946b(parcel, m16947a);
    }
}
