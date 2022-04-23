package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyu.class */
public final class zzyu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzyu> CREATOR = new zzyx();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f29091a;

    @SafeParcelable.Constructor
    public zzyu(@SafeParcelable.Param(id = 2) int i) {
        this.f29091a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 2, this.f29091a);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
