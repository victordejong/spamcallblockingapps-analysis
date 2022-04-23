package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationSettingsResult.class */
public final class LocationSettingsResult extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new zzah();
    @SafeParcelable.Field

    /* renamed from: a */
    public final Status f29744a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final LocationSettingsStates f29745b;

    @SafeParcelable.Constructor
    public LocationSettingsResult(@SafeParcelable.Param(id = 1) Status status, @SafeParcelable.Param(id = 2) LocationSettingsStates locationSettingsStates) {
        this.f29744a = status;
        this.f29745b = locationSettingsStates;
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: d */
    public final Status mo8632d() {
        return this.f29744a;
    }

    /* renamed from: f */
    public final LocationSettingsStates m9410f() {
        return this.f29745b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 1, (Parcelable) mo8632d(), i, false);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) m9410f(), i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
