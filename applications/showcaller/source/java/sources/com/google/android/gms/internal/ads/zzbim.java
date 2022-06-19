package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.C5842q;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbim.class */
public final class zzbim extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbim> CREATOR = new C6826ov();

    /* renamed from: d */
    public final int f33709d;

    /* renamed from: e */
    public final int f33710e;

    public zzbim(int i, int i2) {
        this.f33709d = i;
        this.f33710e = i2;
    }

    public zzbim(C5842q c5842q) {
        this.f33709d = c5842q.m17776b();
        this.f33710e = c5842q.m17775c();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f33709d);
        C6170a.m16937k(parcel, 2, this.f33710e);
        C6170a.m16946b(parcel, m16947a);
    }
}
