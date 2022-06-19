package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnb.class */
public final class cnb extends AbstractC2663a {
    public static final Parcelable.Creator<cnb> CREATOR = new cna();

    /* renamed from: a */
    private final int f13382a;

    /* renamed from: b */
    private final String f13383b;

    /* renamed from: c */
    private final String f13384c;

    public cnb(int i, String str, String str2) {
        this.f13382a = i;
        this.f13383b = str;
        this.f13384c = str2;
    }

    public cnb(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f13382a);
        C2664b.m13932a(parcel, 2, this.f13383b, false);
        C2664b.m13932a(parcel, 3, this.f13384c, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
