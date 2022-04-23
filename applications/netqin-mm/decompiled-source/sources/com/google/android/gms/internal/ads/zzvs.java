package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvs.class */
public final class zzvs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvs> CREATOR = new zzvv();
    @AppOpenAd.AppOpenAdOrientation
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f29057a;

    @SafeParcelable.Constructor
    public zzvs(@SafeParcelable.Param(id = 2) @AppOpenAd.AppOpenAdOrientation int i) {
        this.f29057a = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 2, this.f29057a);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
