package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationAvailability.class */
public final class LocationAvailability extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new zzaa();
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: a */
    public int f29722a;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: b */
    public int f29723b;
    @SafeParcelable.Field

    /* renamed from: c */
    public long f29724c;
    @SafeParcelable.Field

    /* renamed from: d */
    public int f29725d;
    @SafeParcelable.Field

    /* renamed from: e */
    public zzaj[] f29726e;

    @SafeParcelable.Constructor
    public LocationAvailability(@SafeParcelable.Param(id = 4) int i, @SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) long j, @SafeParcelable.Param(id = 5) zzaj[] zzajVarArr) {
        this.f29725d = i;
        this.f29722a = i2;
        this.f29723b = i3;
        this.f29724c = j;
        this.f29726e = zzajVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocationAvailability.class != obj.getClass()) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.f29722a == locationAvailability.f29722a && this.f29723b == locationAvailability.f29723b && this.f29724c == locationAvailability.f29724c && this.f29725d == locationAvailability.f29725d && Arrays.equals(this.f29726e, locationAvailability.f29726e);
    }

    /* renamed from: f */
    public final boolean m9414f() {
        return this.f29725d < 1000;
    }

    public final int hashCode() {
        return Objects.m17294a(Integer.valueOf(this.f29725d), Integer.valueOf(this.f29722a), Integer.valueOf(this.f29723b), Long.valueOf(this.f29724c), this.f29726e);
    }

    public final String toString() {
        boolean f = m9414f();
        StringBuilder sb = new StringBuilder(48);
        sb.append("LocationAvailability[isLocationAvailable: ");
        sb.append(f);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29722a);
        SafeParcelWriter.m17231a(parcel, 2, this.f29723b);
        SafeParcelWriter.m17230a(parcel, 3, this.f29724c);
        SafeParcelWriter.m17231a(parcel, 4, this.f29725d);
        SafeParcelWriter.m17215a(parcel, 5, (Parcelable[]) this.f29726e, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
