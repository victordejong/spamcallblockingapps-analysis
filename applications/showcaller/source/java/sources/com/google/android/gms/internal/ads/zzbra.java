package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbra.class */
public final class zzbra extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbra> CREATOR = new n30();

    /* renamed from: d */
    public final boolean f33728d;

    /* renamed from: e */
    public final String f33729e;

    /* renamed from: f */
    public final int f33730f;

    /* renamed from: g */
    public final byte[] f33731g;

    /* renamed from: h */
    public final String[] f33732h;

    /* renamed from: i */
    public final String[] f33733i;

    /* renamed from: j */
    public final boolean f33734j;

    /* renamed from: k */
    public final long f33735k;

    public zzbra(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.f33728d = z;
        this.f33729e = str;
        this.f33730f = i;
        this.f33731g = bArr;
        this.f33732h = strArr;
        this.f33733i = strArr2;
        this.f33734j = z2;
        this.f33735k = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 1, this.f33728d);
        C6170a.m16930r(parcel, 2, this.f33729e, false);
        C6170a.m16937k(parcel, 3, this.f33730f);
        C6170a.m16942f(parcel, 4, this.f33731g, false);
        C6170a.m16929s(parcel, 5, this.f33732h, false);
        C6170a.m16929s(parcel, 6, this.f33733i, false);
        C6170a.m16945c(parcel, 7, this.f33734j);
        C6170a.m16934n(parcel, 8, this.f33735k);
        C6170a.m16946b(parcel, m16947a);
    }
}
