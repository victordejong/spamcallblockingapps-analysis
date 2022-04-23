package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvr.class */
public final class zzvr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvr> CREATOR = new zzvq();
    @SafeParcelable.Field

    /* renamed from: a */
    public String f29053a;
    @SafeParcelable.Field

    /* renamed from: b */
    public long f29054b;
    @SafeParcelable.Field

    /* renamed from: c */
    public zzva f29055c;
    @SafeParcelable.Field

    /* renamed from: d */
    public Bundle f29056d;

    @SafeParcelable.Constructor
    public zzvr(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 3) zzva zzvaVar, @SafeParcelable.Param(id = 4) Bundle bundle) {
        this.f29053a = str;
        this.f29054b = j;
        this.f29055c = zzvaVar;
        this.f29056d = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f29053a, false);
        SafeParcelWriter.m17230a(parcel, 2, this.f29054b);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f29055c, i, false);
        SafeParcelWriter.m17229a(parcel, 4, this.f29056d, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
