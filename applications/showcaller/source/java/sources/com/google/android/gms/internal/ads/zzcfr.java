package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfr.class */
public final class zzcfr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcfr> CREATOR = new ch0();
    @Deprecated

    /* renamed from: d */
    public final String f33850d;

    /* renamed from: e */
    public final String f33851e;
    @Deprecated

    /* renamed from: f */
    public final zzbdl f33852f;

    /* renamed from: g */
    public final zzbdg f33853g;

    public zzcfr(String str, String str2, zzbdl zzbdlVar, zzbdg zzbdgVar) {
        this.f33850d = str;
        this.f33851e = str2;
        this.f33852f = zzbdlVar;
        this.f33853g = zzbdgVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f33850d, false);
        C6170a.m16930r(parcel, 2, this.f33851e, false);
        C6170a.m16931q(parcel, 3, this.f33852f, i, false);
        C6170a.m16931q(parcel, 4, this.f33853g, i, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
