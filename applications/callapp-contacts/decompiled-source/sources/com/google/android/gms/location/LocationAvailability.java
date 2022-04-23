package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationAvailability.class */
public final class LocationAvailability extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new x();
    @Deprecated
    int zza;
    @Deprecated
    int zzb;
    long zzc;
    int zzd;
    zzbo[] zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocationAvailability(int i, int i2, int i3, long j, zzbo[] zzboVarArr) {
        this.zzd = i;
        this.zza = i2;
        this.zzb = i3;
        this.zzc = j;
        this.zze = zzboVarArr;
    }

    public static LocationAvailability extractLocationAvailability(Intent intent) {
        LocationAvailability locationAvailability;
        if (!hasLocationAvailability(intent)) {
            return null;
        }
        try {
            Bundle extras = intent.getExtras();
            locationAvailability = null;
            if (extras != null) {
                locationAvailability = (LocationAvailability) extras.getParcelable("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
            }
        } catch (ClassCastException e) {
            locationAvailability = null;
        }
        return locationAvailability;
    }

    public static boolean hasLocationAvailability(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_AVAILABILITY");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationAvailability)) {
            return false;
        }
        LocationAvailability locationAvailability = (LocationAvailability) obj;
        return this.zza == locationAvailability.zza && this.zzb == locationAvailability.zzb && this.zzc == locationAvailability.zzc && this.zzd == locationAvailability.zzd && Arrays.equals(this.zze, locationAvailability.zze);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzd), Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Long.valueOf(this.zzc), this.zze});
    }

    public final boolean isLocationAvailable() {
        return this.zzd < 1000;
    }

    public final String toString() {
        boolean isLocationAvailable = isLocationAvailable();
        StringBuilder sb = new StringBuilder(48);
        sb.append("LocationAvailability[isLocationAvailable: ");
        sb.append(isLocationAvailable);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zza);
        a.a(parcel, 2, this.zzb);
        a.a(parcel, 3, this.zzc);
        a.a(parcel, 4, this.zzd);
        a.a(parcel, 5, this.zze, i);
        a.b(parcel, a2);
    }
}
