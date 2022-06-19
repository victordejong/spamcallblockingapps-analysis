package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccg.class */
public final class zzccg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzccg> CREATOR = new vd0();

    /* renamed from: d */
    public final zzbdg f33836d;

    /* renamed from: e */
    public final String f33837e;

    public zzccg(zzbdg zzbdgVar, String str) {
        this.f33836d = zzbdgVar;
        this.f33837e = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16931q(parcel, 2, this.f33836d, i, false);
        C6170a.m16930r(parcel, 3, this.f33837e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
