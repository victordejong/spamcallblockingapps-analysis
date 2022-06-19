package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzz.class */
public final class zzz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzz> CREATOR = new C7302b();

    /* renamed from: d */
    public final long f34948d;

    /* renamed from: e */
    public final long f34949e;

    /* renamed from: f */
    public final boolean f34950f;

    /* renamed from: g */
    public final String f34951g;

    /* renamed from: h */
    public final String f34952h;

    /* renamed from: i */
    public final String f34953i;

    /* renamed from: j */
    public final Bundle f34954j;

    /* renamed from: k */
    public final String f34955k;

    public zzz(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle, String str4) {
        this.f34948d = j;
        this.f34949e = j2;
        this.f34950f = z;
        this.f34951g = str;
        this.f34952h = str2;
        this.f34953i = str3;
        this.f34954j = bundle;
        this.f34955k = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16934n(parcel, 1, this.f34948d);
        C6170a.m16934n(parcel, 2, this.f34949e);
        C6170a.m16945c(parcel, 3, this.f34950f);
        C6170a.m16930r(parcel, 4, this.f34951g, false);
        C6170a.m16930r(parcel, 5, this.f34952h, false);
        C6170a.m16930r(parcel, 6, this.f34953i, false);
        C6170a.m16943e(parcel, 7, this.f34954j, false);
        C6170a.m16930r(parcel, 8, this.f34955k, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
