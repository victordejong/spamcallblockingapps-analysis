package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationSettingsRequest.class */
public final class LocationSettingsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new zzag();
    @SafeParcelable.Field

    /* renamed from: a */
    public final List<LocationRequest> f29740a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final boolean f29741b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final boolean f29742c;
    @SafeParcelable.Field

    /* renamed from: d */
    public zzae f29743d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/location/LocationSettingsRequest$Builder.class */
    public static final class Builder {
        public Builder() {
            new ArrayList();
        }
    }

    @SafeParcelable.Constructor
    public LocationSettingsRequest(@SafeParcelable.Param(id = 1) List<LocationRequest> list, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 5) zzae zzaeVar) {
        this.f29740a = list;
        this.f29741b = z;
        this.f29742c = z2;
        this.f29743d = zzaeVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17207c(parcel, 1, Collections.unmodifiableList(this.f29740a), false);
        SafeParcelWriter.m17218a(parcel, 2, this.f29741b);
        SafeParcelWriter.m17218a(parcel, 3, this.f29742c);
        SafeParcelWriter.m17226a(parcel, 5, (Parcelable) this.f29743d, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
