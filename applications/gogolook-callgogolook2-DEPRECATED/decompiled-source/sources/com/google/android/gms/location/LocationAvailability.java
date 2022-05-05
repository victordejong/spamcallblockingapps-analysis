package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8836l;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationAvailability.class */
public final class LocationAvailability extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new C8836l();
    @Deprecated

    /* renamed from: a */
    public int f6930a;
    @Deprecated

    /* renamed from: b */
    public int f6931b;

    /* renamed from: c */
    public long f6932c;

    /* renamed from: d */
    public int f6933d;

    /* renamed from: e */
    public zzaj[] f6934e;

    public LocationAvailability(int i, int i2, int i3, long j, zzaj[] zzajVarArr) {
        this.f6933d = i;
        this.f6930a = i2;
        this.f6931b = i3;
        this.f6932c = j;
        this.f6934e = zzajVarArr;
    }

    /* renamed from: c */
    public final boolean m31812c() {
        return this.f6933d < 1000;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocationAvailability.class != obj.getClass()) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.f6930a == locationAvailability.f6930a && this.f6931b == locationAvailability.f6931b && this.f6932c == locationAvailability.f6932c && this.f6933d == locationAvailability.f6933d && Arrays.equals(this.f6934e, locationAvailability.f6934e);
    }

    public final int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f6933d), Integer.valueOf(this.f6930a), Integer.valueOf(this.f6931b), Long.valueOf(this.f6932c), this.f6934e);
    }

    public final String toString() {
        boolean c = m31812c();
        StringBuilder sb = new StringBuilder(48);
        sb.append("LocationAvailability[isLocationAvailable: ");
        sb.append(c);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6930a);
        C7031b.m21225a(parcel, 2, this.f6931b);
        C7031b.m21224a(parcel, 3, this.f6932c);
        C7031b.m21225a(parcel, 4, this.f6933d);
        C7031b.m21209a(parcel, 5, (Parcelable[]) this.f6934e, i, false);
        C7031b.m21229a(parcel, a);
    }
}
