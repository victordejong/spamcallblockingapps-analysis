package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjq.class */
public final class zzfjq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfjq> CREATOR = new ts2();

    /* renamed from: d */
    public final int f34008d;

    /* renamed from: e */
    public final String f34009e;

    /* renamed from: f */
    public final String f34010f;

    public zzfjq(int i, String str, String str2) {
        this.f34008d = i;
        this.f34009e = str;
        this.f34010f = str2;
    }

    public zzfjq(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34008d);
        C6170a.m16930r(parcel, 2, this.f34009e, false);
        C6170a.m16930r(parcel, 3, this.f34010f, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
