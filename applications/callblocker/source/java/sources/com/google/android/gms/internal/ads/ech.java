package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.C2384n;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ech.class */
public final class ech extends AbstractC2663a {
    public static final Parcelable.Creator<ech> CREATOR = new ecl();

    /* renamed from: a */
    private final int f16280a;

    /* renamed from: b */
    private final int f16281b;

    public ech(int i, int i2) {
        this.f16280a = i;
        this.f16281b = i2;
    }

    public ech(C2384n c2384n) {
        this.f16280a = c2384n.m14623a();
        this.f16281b = c2384n.m14622b();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f16280a);
        C2664b.m13941a(parcel, 2, this.f16281b);
        C2664b.m13943a(parcel, m13944a);
    }
}
