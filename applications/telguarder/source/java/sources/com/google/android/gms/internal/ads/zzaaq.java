package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaaq.class */
public final class zzaaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaaq> CREATOR = new zzaat();
    public final String zzbrb;

    public zzaaq(SearchAdRequest searchAdRequest) {
        this.zzbrb = searchAdRequest.getQuery();
    }

    public zzaaq(String str) {
        this.zzbrb = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 15, this.zzbrb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
