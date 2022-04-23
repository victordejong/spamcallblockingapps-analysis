package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzdwh.class */
public final class zzdwh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwh> CREATOR = new cwj();
    private final String packageName;
    private final int versionCode;
    private final String zzhxb;

    /* JADX INFO: Access modifiers changed from: package-private */
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.versionCode);
        a.a(parcel, 2, this.packageName, false);
        a.a(parcel, 3, this.zzhxb, false);
        a.b(parcel, a2);
    }
}
