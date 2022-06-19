package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbrl.class */
public final class zzbrl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbrl> CREATOR = new x30();

    /* renamed from: d */
    public final String f33736d;

    /* renamed from: e */
    public final boolean f33737e;

    /* renamed from: f */
    public final int f33738f;

    /* renamed from: g */
    public final String f33739g;

    public zzbrl(String str, boolean z, int i, String str2) {
        this.f33736d = str;
        this.f33737e = z;
        this.f33738f = i;
        this.f33739g = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f33736d, false);
        C6170a.m16945c(parcel, 2, this.f33737e);
        C6170a.m16937k(parcel, 3, this.f33738f);
        C6170a.m16930r(parcel, 4, this.f33739g, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
