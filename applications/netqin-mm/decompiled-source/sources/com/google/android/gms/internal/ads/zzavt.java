package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavt.class */
public final class zzavt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzavt> CREATOR = new zzavs();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f24539a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f24540b;

    @SafeParcelable.Constructor
    public zzavt(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.f24539a = str;
        this.f24540b = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 1, this.f24539a, false);
        SafeParcelWriter.m17221a(parcel, 2, this.f24540b, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
