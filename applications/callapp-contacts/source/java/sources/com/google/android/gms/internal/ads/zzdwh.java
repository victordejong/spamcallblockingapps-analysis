package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzdwh.class */
public final class zzdwh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwh> CREATOR = new cwj();
    private final String packageName;
    private final int versionCode;
    private final String zzhxb;

    public zzdwh(int i, String str, String str2) {
        this.versionCode = i;
        this.packageName = str;
        this.zzhxb = str2;
    }

    public zzdwh(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.versionCode);
        C12050a.m19104a(parcel, 2, this.packageName, false);
        C12050a.m19104a(parcel, 3, this.zzhxb, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
