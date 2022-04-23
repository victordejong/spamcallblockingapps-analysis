package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzb();
    @SafeParcelable.Field

    /* renamed from: a */
    public Bundle f23487a;
    @SafeParcelable.Field

    /* renamed from: b */
    public Feature[] f23488b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int f23489c;

    public zzc() {
    }

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(id = 1) Bundle bundle, @SafeParcelable.Param(id = 2) Feature[] featureArr, @SafeParcelable.Param(id = 3) int i) {
        this.f23487a = bundle;
        this.f23488b = featureArr;
        this.f23489c = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17229a(parcel, 1, this.f23487a, false);
        SafeParcelWriter.m17215a(parcel, 2, (Parcelable[]) this.f23488b, i, false);
        SafeParcelWriter.m17231a(parcel, 3, this.f23489c);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
