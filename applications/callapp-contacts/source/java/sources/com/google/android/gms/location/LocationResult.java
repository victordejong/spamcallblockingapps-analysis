package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationResult.class */
public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable {
    private final List<Location> zzb;
    static final List<Location> zza = Collections.emptyList();
    public static final Parcelable.Creator<LocationResult> CREATOR = new C13777z();

    public LocationResult(List<Location> list) {
        this.zzb = list;
    }

    public static LocationResult create(List<Location> list) {
        List<Location> list2 = list;
        if (list == null) {
            list2 = zza;
        }
        return new LocationResult(list2);
    }

    public static LocationResult extractResult(Intent intent) {
        if (!hasResult(intent)) {
            return null;
        }
        return (LocationResult) intent.getParcelableExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
    }

    public static boolean hasResult(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LocationResult) {
            LocationResult locationResult = (LocationResult) obj;
            if (locationResult.zzb.size() != this.zzb.size()) {
                return false;
            }
            Iterator<Location> it2 = locationResult.zzb.iterator();
            Iterator<Location> it3 = this.zzb.iterator();
            while (it2.hasNext()) {
                if (it3.next().getTime() != it2.next().getTime()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public final Location getLastLocation() {
        int size = this.zzb.size();
        if (size == 0) {
            return null;
        }
        return this.zzb.get(size - 1);
    }

    public final List<Location> getLocations() {
        return this.zzb;
    }

    public final int hashCode() {
        Iterator<Location> it2 = this.zzb.iterator();
        int i = 17;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                long time = it2.next().getTime();
                i = (i2 * 31) + ((int) (time ^ (time >>> 32)));
            } else {
                return i2;
            }
        }
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("LocationResult[locations: ");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19102a(parcel, 1, (List) getLocations(), false);
        C12050a.m19095b(parcel, m19116a);
    }
}
