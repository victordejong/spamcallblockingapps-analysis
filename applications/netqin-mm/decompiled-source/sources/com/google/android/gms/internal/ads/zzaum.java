package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaum.class */
public final class zzaum extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaum> CREATOR = new zzaup();
    @SafeParcelable.Field

    /* renamed from: a */
    public final zzvg f24524a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f24525b;

    @SafeParcelable.Constructor
    public zzaum(@SafeParcelable.Param(id = 2) zzvg zzvgVar, @SafeParcelable.Param(id = 3) String str) {
        this.f24524a = zzvgVar;
        this.f24525b = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17226a(parcel, 2, (Parcelable) this.f24524a, i, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f24525b, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
