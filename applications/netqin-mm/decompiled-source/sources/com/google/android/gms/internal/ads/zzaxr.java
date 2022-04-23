package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxr.class */
public final class zzaxr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaxr> CREATOR = new zzaxq();
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f24586a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f24587b;
    @Deprecated
    @SafeParcelable.Field

    /* renamed from: c */
    public final zzvn f24588c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final zzvg f24589d;

    @SafeParcelable.Constructor
    public zzaxr(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2, @SafeParcelable.Param(id = 3) zzvn zzvnVar, @SafeParcelable.Param(id = 4) zzvg zzvgVar) {
        this.f24586a = str;
        this.f24587b = str2;
        this.f24588c = zzvnVar;
        this.f24589d = zzvgVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f24586a, false);
        SafeParcelWriter.m17221a(parcel, 2, this.f24587b, false);
        SafeParcelWriter.m17226a(parcel, 3, (Parcelable) this.f24588c, i, false);
        SafeParcelWriter.m17226a(parcel, 4, (Parcelable) this.f24589d, i, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
