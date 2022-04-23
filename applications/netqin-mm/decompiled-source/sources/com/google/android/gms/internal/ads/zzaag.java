package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaag.class */
public final class zzaag extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaag> CREATOR = new zzaaf();
    @SafeParcelable.Field

    /* renamed from: a */
    public final String f23627a;

    public zzaag(SearchAdRequest searchAdRequest) {
        this.f23627a = searchAdRequest.m17892a();
    }

    @SafeParcelable.Constructor
    public zzaag(@SafeParcelable.Param(id = 15) String str) {
        this.f23627a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17221a(parcel, 15, this.f23627a, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
