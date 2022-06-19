package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "SearchAdRequestParcelCreator")
@SafeParcelable.Reserved({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkm.class */
public final class zzbkm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbkm> CREATOR = new zzbkn();
    @SafeParcelable.Field(m4805id = 15)
    public final String zza;

    public zzbkm(SearchAdRequest searchAdRequest) {
        this.zza = searchAdRequest.getQuery();
    }

    @SafeParcelable.Constructor
    public zzbkm(@SafeParcelable.Param(m4804id = 15) String str) {
        this.zza = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 15, this.zza, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
