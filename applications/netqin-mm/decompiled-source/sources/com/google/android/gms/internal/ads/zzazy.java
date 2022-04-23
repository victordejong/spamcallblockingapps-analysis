package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazy.class */
public final class zzazy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzazy> CREATOR = new zzbaa();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f24693a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final int f24694b;

    @SafeParcelable.Constructor
    public zzazy(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i) {
        this.f24693a = str == null ? "" : str;
        this.f24694b = i;
    }

    /* renamed from: a */
    public static zzazy m15991a(Throwable th) {
        zzva a = zzdpe.m13338a(th);
        return new zzazy(zzdwf.m13088b(th.getMessage()) ? a.f28996b : th.getMessage(), a.f28995a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f24693a, false);
        SafeParcelWriter.m17231a(parcel, 2, this.f24694b);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
