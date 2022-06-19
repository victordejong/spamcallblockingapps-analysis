package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/MethodInvocation.class */
public class MethodInvocation extends AbstractSafeParcelable {
    @RecentlyNonNull
    public static final Parcelable.Creator<MethodInvocation> CREATOR = new C6132h0();

    /* renamed from: d */
    private final int f19470d;

    /* renamed from: e */
    private final int f19471e;

    /* renamed from: f */
    private final int f19472f;

    /* renamed from: g */
    private final long f19473g;

    /* renamed from: h */
    private final long f19474h;

    /* renamed from: i */
    private final String f19475i;

    /* renamed from: j */
    private final String f19476j;

    /* renamed from: k */
    private final int f19477k;

    public MethodInvocation(int i, int i2, int i3, long j, long j2, String str, String str2, int i4) {
        this.f19470d = i;
        this.f19471e = i2;
        this.f19472f = i3;
        this.f19473g = j;
        this.f19474h = j2;
        this.f19475i = str;
        this.f19476j = str2;
        this.f19477k = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19470d);
        C6170a.m16937k(parcel, 2, this.f19471e);
        C6170a.m16937k(parcel, 3, this.f19472f);
        C6170a.m16934n(parcel, 4, this.f19473g);
        C6170a.m16934n(parcel, 5, this.f19474h);
        C6170a.m16930r(parcel, 6, this.f19475i, false);
        C6170a.m16930r(parcel, 7, this.f19476j, false);
        C6170a.m16937k(parcel, 8, this.f19477k);
        C6170a.m16946b(parcel, m16947a);
    }
}
