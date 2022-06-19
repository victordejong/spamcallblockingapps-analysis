package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaav.class */
public final class zzaav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaav> CREATOR = new C12977v();
    public final String zzbrl;

    public zzaav(SearchAdRequest searchAdRequest) {
        this.zzbrl = searchAdRequest.getQuery();
    }

    public zzaav(String str) {
        this.zzbrl = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 15, this.zzbrl, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
