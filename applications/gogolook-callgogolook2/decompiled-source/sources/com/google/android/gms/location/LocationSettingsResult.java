package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8845r;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsResult.class */
public final class LocationSettingsResult extends AbstractSafeParcelable implements AbstractC6835k {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new C8845r();

    /* renamed from: a */
    public final Status f6952a;

    /* renamed from: b */
    public final LocationSettingsStates f6953b;

    public LocationSettingsResult(Status status) {
        this(status, null);
    }

    public LocationSettingsResult(Status status, LocationSettingsStates locationSettingsStates) {
        this.f6952a = status;
        this.f6953b = locationSettingsStates;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6835k
    /* renamed from: b */
    public final Status mo21814b() {
        return this.f6952a;
    }

    /* renamed from: c */
    public final LocationSettingsStates m31802c() {
        return this.f6953b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) mo21814b(), i, false);
        C7031b.m21220a(parcel, 2, (Parcelable) m31802c(), i, false);
        C7031b.m21229a(parcel, a);
    }
}
