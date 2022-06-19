package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbio.class */
public final class zzbio extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbio> CREATOR = new zzbip();
    @SafeParcelable.Field
    public final String zza;

    public zzbio(SearchAdRequest searchAdRequest) {
        this.zza = searchAdRequest.getQuery();
    }

    @SafeParcelable.Constructor
    public zzbio(@SafeParcelable.Param(id = 15) String str) {
        this.zza = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 15, this.zza, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
