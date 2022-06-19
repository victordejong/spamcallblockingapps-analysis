package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsResult.class */
public final class LocationSettingsResult extends AbstractSafeParcelable implements AbstractC11925m {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new C13732ad();
    private final Status zza;
    private final LocationSettingsStates zzb;

    public LocationSettingsResult(Status status, LocationSettingsStates locationSettingsStates) {
        this.zza = status;
        this.zzb = locationSettingsStates;
    }

    public final LocationSettingsStates getLocationSettingsStates() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.api.AbstractC11925m
    public final Status getStatus() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, getStatus(), i, false);
        C12050a.m19107a(parcel, 2, getLocationSettingsStates(), i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
