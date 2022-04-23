package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsResult.class */
public final class LocationSettingsResult extends AbstractSafeParcelable implements m {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new ad();
    private final Status zza;
    private final LocationSettingsStates zzb;

    public LocationSettingsResult(Status status, LocationSettingsStates locationSettingsStates) {
        this.zza = status;
        this.zzb = locationSettingsStates;
    }

    public final LocationSettingsStates getLocationSettingsStates() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status getStatus() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, getStatus(), i, false);
        a.a(parcel, 2, getLocationSettingsStates(), i, false);
        a.b(parcel, a2);
    }
}
