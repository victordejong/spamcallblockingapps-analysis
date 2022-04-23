package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzate.class */
public final class zzate extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzate> CREATOR = new zzath();
    @SafeParcelable.Field

    /* renamed from: a */
    public String f24458a;

    @SafeParcelable.Constructor
    public zzate(@SafeParcelable.Param(id = 2) String str) {
        this.f24458a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 2, this.f24458a, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
