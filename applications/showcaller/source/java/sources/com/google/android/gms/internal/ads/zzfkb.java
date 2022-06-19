package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfkb.class */
public final class zzfkb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfkb> CREATOR = new ct2();

    /* renamed from: d */
    public final int f34019d;

    /* renamed from: e */
    public final byte[] f34020e;

    /* renamed from: f */
    public final int f34021f;

    public zzfkb(int i, byte[] bArr, int i2) {
        this.f34019d = i;
        this.f34020e = bArr == null ? null : Arrays.copyOf(bArr, bArr.length);
        this.f34021f = i2;
    }

    public zzfkb(byte[] bArr, int i) {
        this(1, null, 1);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f34019d);
        C6170a.m16942f(parcel, 2, this.f34020e, false);
        C6170a.m16937k(parcel, 3, this.f34021f);
        C6170a.m16946b(parcel, m16947a);
    }
}
