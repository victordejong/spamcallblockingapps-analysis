package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzvf.class */
public final class zzvf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvf> CREATOR = new eit();
    public final String zzchp;
    public final String zzchq;

    public zzvf(String str, String str2) {
        this.zzchp = str;
        this.zzchq = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.zzchp, false);
        C12050a.m19104a(parcel, 2, this.zzchq, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
