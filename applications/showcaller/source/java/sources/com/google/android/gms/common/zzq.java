package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzq.class */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new C5983a0();

    /* renamed from: d */
    private final boolean f19748d;

    /* renamed from: e */
    private final String f19749e;

    /* renamed from: f */
    private final int f19750f;

    public zzq(boolean z, String str, int i) {
        this.f19748d = z;
        this.f19749e = str;
        this.f19750f = C6252z.m16750a(i) - 1;
    }

    /* renamed from: k0 */
    public final String m16749k0() {
        return this.f19749e;
    }

    /* renamed from: l0 */
    public final int m16748l0() {
        return C6252z.m16750a(this.f19750f);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16945c(parcel, 1, this.f19748d);
        C6170a.m16930r(parcel, 2, this.f19749e, false);
        C6170a.m16937k(parcel, 3, this.f19750f);
        C6170a.m16946b(parcel, m16947a);
    }

    public final boolean zza() {
        return this.f19748d;
    }
}
