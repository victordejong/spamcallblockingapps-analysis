package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdp.class */
public final class zzbdp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbdp> CREATOR = new C6302ar();

    /* renamed from: d */
    public final String f33701d;

    /* renamed from: e */
    public long f33702e;

    /* renamed from: f */
    public zzbcz f33703f;

    /* renamed from: g */
    public final Bundle f33704g;

    public zzbdp(String str, long j, zzbcz zzbczVar, Bundle bundle) {
        this.f33701d = str;
        this.f33702e = j;
        this.f33703f = zzbczVar;
        this.f33704g = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f33701d, false);
        C6170a.m16934n(parcel, 2, this.f33702e);
        C6170a.m16931q(parcel, 3, this.f33703f, i, false);
        C6170a.m16943e(parcel, 4, this.f33704g, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
