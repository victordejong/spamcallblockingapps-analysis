package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmw.class */
public final class cmw extends AbstractC2663a {
    public static final Parcelable.Creator<cmw> CREATOR = new cmz();

    /* renamed from: a */
    private final int f13377a;

    /* renamed from: b */
    private final byte[] f13378b;

    public cmw(int i, byte[] bArr) {
        this.f13377a = i;
        this.f13378b = bArr;
    }

    public cmw(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f13377a);
        C2664b.m13929a(parcel, 2, this.f13378b, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
