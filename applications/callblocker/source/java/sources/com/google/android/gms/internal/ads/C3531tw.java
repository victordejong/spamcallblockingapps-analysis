package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.tw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tw.class */
public final class C3531tw extends AbstractC2663a {
    public static final Parcelable.Creator<C3531tw> CREATOR = new C3533ty();
    @Deprecated

    /* renamed from: a */
    public final String f17388a;

    /* renamed from: b */
    public final String f17389b;
    @Deprecated

    /* renamed from: c */
    public final dyd f17390c;

    /* renamed from: d */
    public final dya f17391d;

    public C3531tw(String str, String str2, dyd dydVar, dya dyaVar) {
        this.f17388a = str;
        this.f17389b = str2;
        this.f17390c = dydVar;
        this.f17391d = dyaVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f17388a, false);
        C2664b.m13932a(parcel, 2, this.f17389b, false);
        C2664b.m13937a(parcel, 3, (Parcelable) this.f17390c, i, false);
        C2664b.m13937a(parcel, 4, (Parcelable) this.f17391d, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
