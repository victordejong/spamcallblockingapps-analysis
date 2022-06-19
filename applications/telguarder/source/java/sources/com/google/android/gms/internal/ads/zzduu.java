package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzduu.class */
public final class zzduu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzduu> CREATOR = new zzdut();
    private final int versionCode;
    private final String zzhsu;
    private final String zzhsv;
    private final int zzhsw;
    private final int zzhum;

    public zzduu(int i, int i2, int i3, String str, String str2) {
        this.versionCode = i;
        this.zzhsw = i2;
        this.zzhsu = str;
        this.zzhsv = str2;
        this.zzhum = i3;
    }

    public zzduu(int i, zzgp zzgpVar, String str, String str2) {
        this(1, i, zzgpVar.zzv(), str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.versionCode);
        SafeParcelWriter.writeInt(parcel, 2, this.zzhsw);
        SafeParcelWriter.writeString(parcel, 3, this.zzhsu, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzhsv, false);
        SafeParcelWriter.writeInt(parcel, 5, this.zzhum);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
