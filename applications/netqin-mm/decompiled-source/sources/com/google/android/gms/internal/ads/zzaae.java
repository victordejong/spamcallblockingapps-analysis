package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaae.class */
public final class zzaae extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaae> CREATOR = new zzaad();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f23625a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f23626b;

    @SafeParcelable.Constructor
    public zzaae(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2) {
        this.f23625a = i;
        this.f23626b = i2;
    }

    public zzaae(RequestConfiguration requestConfiguration) {
        this.f23625a = requestConfiguration.m18098b();
        this.f23626b = requestConfiguration.m18097c();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23625a);
        SafeParcelWriter.m17231a(parcel, 2, this.f23626b);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
