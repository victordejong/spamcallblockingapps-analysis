package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.C5847a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbio.class */
public final class zzbio extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbio> CREATOR = new C6863pv();

    /* renamed from: d */
    public final String f33711d;

    public zzbio(C5847a c5847a) {
        throw null;
    }

    public zzbio(String str) {
        this.f33711d = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 15, this.f33711d, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
