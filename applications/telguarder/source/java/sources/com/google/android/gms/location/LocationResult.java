package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationResult.class */
public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable {
    private final List<Location> zzb;
    static final List<Location> zza = Collections.emptyList();
    public static final Parcelable.Creator<LocationResult> CREATOR = new zzbg();

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

    public boolean equals(Object obj) {
        if (obj instanceof LocationResult) {
            LocationResult locationResult = (LocationResult) obj;
            if (locationResult.zzb.size() != this.zzb.size()) {
                return false;
            }
            Iterator<Location> it = locationResult.zzb.iterator();
            Iterator<Location> it2 = this.zzb.iterator();
            while (it.hasNext()) {
                if (it2.next().getTime() != it.next().getTime()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public Location getLastLocation() {
        int size = this.zzb.size();
        if (size == 0) {
            return null;
        }
        return this.zzb.get(size - 1);
    }

    public List<Location> getLocations() {
        return this.zzb;
    }

    public int hashCode() {
        Iterator<Location> it = this.zzb.iterator();
        int i = 17;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                long time = it.next().getTime();
                i = (i2 * 31) + ((int) (time ^ (time >>> 32)));
            } else {
                return i2;
            }
        }
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("LocationResult[locations: ");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, getLocations(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
