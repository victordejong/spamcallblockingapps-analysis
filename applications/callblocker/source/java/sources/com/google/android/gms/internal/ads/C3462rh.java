package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.ads.rh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rh.class */
public final class C3462rh extends AbstractC2663a {
    public static final Parcelable.Creator<C3462rh> CREATOR = new C3465rk();

    /* renamed from: a */
    public final dya f17303a;

    /* renamed from: b */
    public final String f17304b;

    public C3462rh(dya dyaVar, String str) {
        this.f17303a = dyaVar;
        this.f17304b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13937a(parcel, 2, (Parcelable) this.f17303a, i, false);
        C2664b.m13932a(parcel, 3, this.f17304b, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
