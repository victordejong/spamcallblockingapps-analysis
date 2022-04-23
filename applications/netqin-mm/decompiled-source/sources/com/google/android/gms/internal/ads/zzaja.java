package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaja.class */
public final class zzaja extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaja> CREATOR = new zzaiz();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f24145a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final Bundle f24146b;

    @SafeParcelable.Constructor
    public zzaja(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f24145a = str;
        this.f24146b = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f24145a, false);
        SafeParcelWriter.m17229a(parcel, 2, this.f24146b, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
