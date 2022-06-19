package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/appset/zza.class */
public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new C5871d();

    /* renamed from: d */
    private final String f18830d;

    /* renamed from: e */
    private final String f18831e;

    public zza(String str, String str2) {
        this.f18830d = str;
        this.f18831e = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16930r(parcel, 1, this.f18830d, false);
        C6170a.m16930r(parcel, 2, this.f18831e, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
