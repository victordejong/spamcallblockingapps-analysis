package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.gn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gn.class */
public final class C3171gn extends AbstractC2663a {
    public static final Parcelable.Creator<C3171gn> CREATOR = new C3174gq();

    /* renamed from: a */
    public final int f16695a;

    /* renamed from: b */
    public final int f16696b;

    /* renamed from: c */
    public final String f16697c;

    /* renamed from: d */
    public final int f16698d;

    public C3171gn(int i, int i2, String str, int i3) {
        this.f16695a = i;
        this.f16696b = i2;
        this.f16697c = str;
        this.f16698d = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f16696b);
        C2664b.m13932a(parcel, 2, this.f16697c, false);
        C2664b.m13941a(parcel, 3, this.f16698d);
        C2664b.m13941a(parcel, 1000, this.f16695a);
        C2664b.m13943a(parcel, m13944a);
    }
}
