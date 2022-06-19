package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdg.class */
public final class zzcdg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcdg> CREATOR = new ue0();

    /* renamed from: d */
    public final String f33840d;

    /* renamed from: e */
    public final String f33841e;

    public zzcdg(String str, String str2) {
        this.f33840d = str;
        this.f33841e = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f33840d, false);
        C6170a.m16930r(parcel, 2, this.f33841e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
