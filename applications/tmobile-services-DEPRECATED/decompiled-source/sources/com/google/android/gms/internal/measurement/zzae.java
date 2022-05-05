package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzae.class */
public final class zzae extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzae> CREATOR = new zzah();
    @SafeParcelable.Field

    /* renamed from: f */
    public final long f8170f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final long f8171g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final boolean f8172h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final String f8173i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final String f8174j;
    @SafeParcelable.Field

    /* renamed from: k */
    public final String f8175k;
    @SafeParcelable.Field

    /* renamed from: l */
    public final Bundle f8176l;

    @SafeParcelable.Constructor
    public zzae(@SafeParcelable.Param(id = 1) long j, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) Bundle bundle) {
        this.f8170f = j;
        this.f8171g = j2;
        this.f8172h = z;
        this.f8173i = str;
        this.f8174j = str2;
        this.f8175k = str3;
        this.f8176l = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14451m(parcel, 1, this.f8170f);
        SafeParcelWriter.m14451m(parcel, 2, this.f8171g);
        SafeParcelWriter.m14461c(parcel, 3, this.f8172h);
        SafeParcelWriter.m14447q(parcel, 4, this.f8173i, false);
        SafeParcelWriter.m14447q(parcel, 5, this.f8174j, false);
        SafeParcelWriter.m14447q(parcel, 6, this.f8175k, false);
        SafeParcelWriter.m14459e(parcel, 7, this.f8176l, false);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
