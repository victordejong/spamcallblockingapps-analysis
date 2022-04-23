package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzajm.class */
public final class zzajm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajm> CREATOR = new ip();
    public final String description;
    public final String zzdka;
    public final boolean zzdkb;
    public final int zzdkc;

    public zzajm(String str, boolean z, int i, String str2) {
        this.zzdka = str;
        this.zzdkb = z;
        this.zzdkc = i;
        this.description = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzdka, false);
        a.a(parcel, 2, this.zzdkb);
        a.a(parcel, 3, this.zzdkc);
        a.a(parcel, 4, this.description, false);
        a.b(parcel, a2);
    }
}
