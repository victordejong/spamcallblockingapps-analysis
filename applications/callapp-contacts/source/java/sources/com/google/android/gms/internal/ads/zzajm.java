package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzajm.class */
public final class zzajm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajm> CREATOR = new C12641ip();
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.zzdka, false);
        C12050a.m19101a(parcel, 2, this.zzdkb);
        C12050a.m19112a(parcel, 3, this.zzdkc);
        C12050a.m19104a(parcel, 4, this.description, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
