package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzchp, false);
        a.a(parcel, 2, this.zzchq, false);
        a.b(parcel, a2);
    }
}
