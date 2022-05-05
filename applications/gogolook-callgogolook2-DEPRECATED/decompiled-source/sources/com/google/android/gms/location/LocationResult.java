package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8840n;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationResult.class */
public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable {

    /* renamed from: a */
    public final List<Location> f6944a;

    /* renamed from: b */
    public static final List<Location> f6943b = Collections.emptyList();
    public static final Parcelable.Creator<LocationResult> CREATOR = new C8840n();

    public LocationResult(List<Location> list) {
        this.f6944a = list;
    }

    @NonNull
    /* renamed from: c */
    public final List<Location> m31806c() {
        return this.f6944a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        if (locationResult.f6944a.size() != this.f6944a.size()) {
            return false;
        }
        Iterator<Location> it = this.f6944a.iterator();
        for (Location location : locationResult.f6944a) {
            if (it.next().getTime() != location.getTime()) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = 17;
        for (Location location : this.f6944a) {
            long time = location.getTime();
            i = (i * 31) + ((int) (time ^ (time >>> 32)));
        }
        return i;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f6944a);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("LocationResult[locations: ");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 1, m31806c(), false);
        C7031b.m21229a(parcel, a);
    }
}
