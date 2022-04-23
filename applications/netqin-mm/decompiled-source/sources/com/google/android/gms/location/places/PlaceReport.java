package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/places/PlaceReport.class */
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new zza();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f29752a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f29753b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f29754c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f29755d;

    @SafeParcelable.Constructor
    public PlaceReport(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3) {
        this.f29752a = i;
        this.f29753b = str;
        this.f29754c = str2;
        this.f29755d = str3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return Objects.m17295a(this.f29753b, placeReport.f29753b) && Objects.m17295a(this.f29754c, placeReport.f29754c) && Objects.m17295a(this.f29755d, placeReport.f29755d);
    }

    /* renamed from: f */
    public String m9403f() {
        return this.f29753b;
    }

    public int hashCode() {
        return Objects.m17294a(this.f29753b, this.f29754c, this.f29755d);
    }

    /* renamed from: i */
    public String m9402i() {
        return this.f29754c;
    }

    public String toString() {
        Objects.ToStringHelper a = Objects.m17296a(this);
        a.m17293a("placeId", this.f29753b);
        a.m17293a("tag", this.f29754c);
        if (!"unknown".equals(this.f29755d)) {
            a.m17293a("source", this.f29755d);
        }
        return a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f29752a);
        SafeParcelWriter.m17221a(parcel, 2, m9403f(), false);
        SafeParcelWriter.m17221a(parcel, 3, m9402i(), false);
        SafeParcelWriter.m17221a(parcel, 4, this.f29755d, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
