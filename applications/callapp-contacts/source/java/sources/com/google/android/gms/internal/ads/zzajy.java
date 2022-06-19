package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzajy.class */
public final class zzajy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajy> CREATOR = new C12653ja();
    public final int versionCode;
    public final int zzbod;
    public final int zzdkg;
    public final String zzdkh;

    public zzajy(int i, int i2, String str, int i3) {
        this.versionCode = i;
        this.zzdkg = i2;
        this.zzdkh = str;
        this.zzbod = i3;
    }

    public zzajy(C12662jj c12662jj) {
        this(2, 1, c12662jj.f49382b, c12662jj.f49381a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zzdkg);
        C12050a.m19104a(parcel, 2, this.zzdkh, false);
        C12050a.m19112a(parcel, 3, this.zzbod);
        C12050a.m19112a(parcel, 1000, this.versionCode);
        C12050a.m19095b(parcel, m19116a);
    }
}
