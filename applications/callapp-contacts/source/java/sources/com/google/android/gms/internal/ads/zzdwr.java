package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzdwr.class */
public final class zzdwr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdwr> CREATOR = new cwr();
    private final int versionCode;
    private final String zzhvw;
    private final String zzhvx;
    private final int zzhvy;
    private final int zzhxo;

    public zzdwr(int i, int i2, int i3, String str, String str2) {
        this.versionCode = i;
        this.zzhvy = i2;
        this.zzhvw = str;
        this.zzhvx = str2;
        this.zzhxo = i3;
    }

    public zzdwr(int i, duu duuVar, String str, String str2) {
        this(1, i, duuVar.zzv(), str, str2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.versionCode);
        C12050a.m19112a(parcel, 2, this.zzhvy);
        C12050a.m19104a(parcel, 3, this.zzhvw, false);
        C12050a.m19104a(parcel, 4, this.zzhvx, false);
        C12050a.m19112a(parcel, 5, this.zzhxo);
        C12050a.m19095b(parcel, m19116a);
    }
}
