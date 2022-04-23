package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsStates.class */
public final class LocationSettingsStates extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new ae();
    private final boolean zza;
    private final boolean zzb;
    private final boolean zzc;
    private final boolean zzd;
    private final boolean zze;
    private final boolean zzf;

    public LocationSettingsStates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = z3;
        this.zzd = z4;
        this.zze = z5;
        this.zzf = z6;
    }

    public static LocationSettingsStates fromIntent(Intent intent) {
        return (LocationSettingsStates) b.a(intent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
    }

    public final boolean isBlePresent() {
        return this.zzf;
    }

    public final boolean isBleUsable() {
        return this.zzc;
    }

    public final boolean isGpsPresent() {
        return this.zzd;
    }

    public final boolean isGpsUsable() {
        return this.zza;
    }

    public final boolean isLocationPresent() {
        return this.zzd || this.zze;
    }

    public final boolean isLocationUsable() {
        return this.zza || this.zzb;
    }

    public final boolean isNetworkLocationPresent() {
        return this.zze;
    }

    public final boolean isNetworkLocationUsable() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, isGpsUsable());
        a.a(parcel, 2, isNetworkLocationUsable());
        a.a(parcel, 3, isBleUsable());
        a.a(parcel, 4, isGpsPresent());
        a.a(parcel, 5, isNetworkLocationPresent());
        a.a(parcel, 6, isBlePresent());
        a.b(parcel, a2);
    }
}
