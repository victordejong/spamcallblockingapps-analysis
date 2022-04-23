package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzaj.class */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new zzak();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f29759a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f29760b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final long f29761c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final long f29762d;

    @SafeParcelable.Constructor
    public zzaj(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 4) long j2) {
        this.f29759a = i;
        this.f29760b = i2;
        this.f29761c = j;
        this.f29762d = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaj.class != obj.getClass()) {
            return false;
        }
        zzaj zzajVar = (zzaj) obj;
        return this.f29759a == zzajVar.f29759a && this.f29760b == zzajVar.f29760b && this.f29761c == zzajVar.f29761c && this.f29762d == zzajVar.f29762d;
    }

    public final int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f29760b), Integer.valueOf(this.f29759a), Long.valueOf(this.f29762d), Long.valueOf(this.f29761c));
    }

    public final String toString() {
        return "NetworkLocationStatus: Wifi status: " + this.f29759a + " Cell status: " + this.f29760b + " elapsed time NS: " + this.f29762d + " system time ms: " + this.f29761c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29759a);
        SafeParcelWriter.m17231a(parcel, 2, this.f29760b);
        SafeParcelWriter.m17230a(parcel, 3, this.f29761c);
        SafeParcelWriter.m17230a(parcel, 4, this.f29762d);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
