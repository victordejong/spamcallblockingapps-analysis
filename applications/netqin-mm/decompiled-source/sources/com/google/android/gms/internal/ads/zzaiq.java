package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaiq.class */
public final class zzaiq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaiq> CREATOR = new zzaip();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f24137a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f24138b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final int f24139c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f24140d;

    @SafeParcelable.Constructor
    public zzaiq(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i, @SafeParcelable.Param(id = 4) String str2) {
        this.f24137a = str;
        this.f24138b = z;
        this.f24139c = i;
        this.f24140d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f24137a, false);
        SafeParcelWriter.m17218a(parcel, 2, this.f24138b);
        SafeParcelWriter.m17231a(parcel, 3, this.f24139c);
        SafeParcelWriter.m17221a(parcel, 4, this.f24140d, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
