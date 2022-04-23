package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaav.class */
public final class zzaav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaav> CREATOR = new v();
    public final String zzbrl;

    public zzaav(SearchAdRequest searchAdRequest) {
        this.zzbrl = searchAdRequest.getQuery();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaav(String str) {
        this.zzbrl = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 15, this.zzbrl, false);
        a.b(parcel, a2);
    }
}
