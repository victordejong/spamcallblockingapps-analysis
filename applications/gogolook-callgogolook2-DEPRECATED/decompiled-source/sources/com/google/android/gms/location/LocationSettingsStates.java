package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8846s;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/LocationSettingsStates.class */
public final class LocationSettingsStates extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new C8846s();

    /* renamed from: a */
    public final boolean f6954a;

    /* renamed from: b */
    public final boolean f6955b;

    /* renamed from: c */
    public final boolean f6956c;

    /* renamed from: d */
    public final boolean f6957d;

    /* renamed from: e */
    public final boolean f6958e;

    /* renamed from: f */
    public final boolean f6959f;

    public LocationSettingsStates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.f6954a = z;
        this.f6955b = z2;
        this.f6956c = z3;
        this.f6957d = z4;
        this.f6958e = z5;
        this.f6959f = z6;
    }

    /* renamed from: H */
    public final boolean m31801H() {
        return this.f6956c;
    }

    /* renamed from: I */
    public final boolean m31800I() {
        return this.f6957d;
    }

    /* renamed from: J */
    public final boolean m31799J() {
        return this.f6954a;
    }

    /* renamed from: K */
    public final boolean m31798K() {
        return this.f6958e;
    }

    /* renamed from: L */
    public final boolean m31797L() {
        return this.f6955b;
    }

    /* renamed from: c */
    public final boolean m31796c() {
        return this.f6959f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21212a(parcel, 1, m31799J());
        C7031b.m21212a(parcel, 2, m31797L());
        C7031b.m21212a(parcel, 3, m31801H());
        C7031b.m21212a(parcel, 4, m31800I());
        C7031b.m21212a(parcel, 5, m31798K());
        C7031b.m21212a(parcel, 6, m31796c());
        C7031b.m21229a(parcel, a);
    }
}
