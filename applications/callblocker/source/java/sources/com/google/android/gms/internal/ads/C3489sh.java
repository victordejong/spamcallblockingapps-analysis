package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.sh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sh.class */
public final class C3489sh extends AbstractC2663a {
    public static final Parcelable.Creator<C3489sh> CREATOR = new C3487sf();

    /* renamed from: a */
    public final String f17315a;

    /* renamed from: b */
    public final String f17316b;

    public C3489sh(String str, String str2) {
        this.f17315a = str;
        this.f17316b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 1, this.f17315a, false);
        C2664b.m13932a(parcel, 2, this.f17316b, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
