package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqy.class */
public final class zzbqy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbqy> CREATOR = new l30();

    /* renamed from: d */
    public final String f33725d;

    /* renamed from: e */
    public final String[] f33726e;

    /* renamed from: f */
    public final String[] f33727f;

    public zzbqy(String str, String[] strArr, String[] strArr2) {
        this.f33725d = str;
        this.f33726e = strArr;
        this.f33727f = strArr2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f33725d, false);
        C6170a.m16929s(parcel, 2, this.f33726e, false);
        C6170a.m16929s(parcel, 3, this.f33727f, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
