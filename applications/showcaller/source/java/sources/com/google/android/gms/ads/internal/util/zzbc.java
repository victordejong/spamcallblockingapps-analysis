package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import com.google.android.gms.internal.ads.iv2;
import com.google.android.gms.internal.ads.sk2;
import com.google.android.gms.internal.ads.zzbcz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbc.class */
public final class zzbc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbc> CREATOR = new C5681d0();

    /* renamed from: d */
    public final String f18606d;

    /* renamed from: e */
    public final int f18607e;

    public zzbc(String str, int i) {
        this.f18606d = str == null ? "" : str;
        this.f18607e = i;
    }

    /* renamed from: k0 */
    public static zzbc m17907k0(Throwable th) {
        zzbcz m11000a = sk2.m11000a(th);
        return new zzbc(iv2.m14268c(th.getMessage()) ? m11000a.f33654e : th.getMessage(), m11000a.f33653d);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f18606d, false);
        C6170a.m16937k(parcel, 2, this.f18607e);
        C6170a.m16946b(parcel, m16947a);
    }
}
