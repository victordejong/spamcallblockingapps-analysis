package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduk.class */
public final class zzduk extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduk> CREATOR = new zzduj();
    private final String packageName;
    private final int versionCode;
    private final String zzhtz;

    public zzduk(int i, String str, String str2) {
        this.versionCode = i;
        this.packageName = str;
        this.zzhtz = str2;
    }

    public zzduk(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeString(parcel, 2, this.packageName, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzhtz, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
