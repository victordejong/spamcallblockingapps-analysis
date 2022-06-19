package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfjn.class */
public final class zzfjn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfjn> CREATOR = new rs2();

    /* renamed from: d */
    public final int f34006d;

    /* renamed from: e */
    public final byte[] f34007e;

    public zzfjn(int i, byte[] bArr) {
        this.f34006d = i;
        this.f34007e = bArr;
    }

    public zzfjn(byte[] bArr) {
        this(1, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34006d);
        C6170a.m16942f(parcel, 2, this.f34007e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
