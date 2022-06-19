package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.C2389q;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecn.class */
public final class ecn extends AbstractC2663a {
    public static final Parcelable.Creator<ecn> CREATOR = new ecq();

    /* renamed from: a */
    public final boolean f16288a;

    /* renamed from: b */
    public final boolean f16289b;

    /* renamed from: c */
    public final boolean f16290c;

    public ecn(C2389q c2389q) {
        this(c2389q.m14612a(), c2389q.m14611b(), c2389q.m14610c());
    }

    public ecn(boolean z, boolean z2, boolean z3) {
        this.f16288a = z;
        this.f16289b = z2;
        this.f16290c = z3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13930a(parcel, 2, this.f16288a);
        C2664b.m13930a(parcel, 3, this.f16289b);
        C2664b.m13930a(parcel, 4, this.f16290c);
        C2664b.m13943a(parcel, m13944a);
    }
}
