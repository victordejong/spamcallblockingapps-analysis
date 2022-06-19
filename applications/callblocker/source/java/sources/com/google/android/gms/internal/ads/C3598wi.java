package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* renamed from: com.google.android.gms.internal.ads.wi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wi.class */
public final class C3598wi extends AbstractC2663a {
    public static final Parcelable.Creator<C3598wi> CREATOR = new C3600wk();

    /* renamed from: a */
    public final String f17550a;

    /* renamed from: b */
    public final int f17551b;

    public C3598wi(String str, int i) {
        this.f17550a = str == null ? "" : str;
        this.f17551b = i;
    }

    /* renamed from: a */
    public static C3598wi m6882a(Throwable th, int i) {
        return new C3598wi(th.getMessage(), i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f17550a, false);
        C2664b.m13941a(parcel, 2, this.f17551b);
        C2664b.m13943a(parcel, m13944a);
    }
}
