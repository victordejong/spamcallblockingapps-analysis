package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.C12051b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsStates.class */
public final class LocationSettingsStates extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new C13733ae();
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
        return (LocationSettingsStates) C12051b.m19092a(intent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 1, isGpsUsable());
        C12050a.m19101a(parcel, 2, isNetworkLocationUsable());
        C12050a.m19101a(parcel, 3, isBleUsable());
        C12050a.m19101a(parcel, 4, isGpsPresent());
        C12050a.m19101a(parcel, 5, isNetworkLocationPresent());
        C12050a.m19101a(parcel, 6, isBlePresent());
        C12050a.m19095b(parcel, m19116a);
    }
}
