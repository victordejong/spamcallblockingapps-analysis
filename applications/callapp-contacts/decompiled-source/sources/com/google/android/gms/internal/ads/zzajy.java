package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzajy.class */
public final class zzajy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzajy> CREATOR = new ja();
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

    public zzajy(jj jjVar) {
        this(2, 1, jjVar.f28073b, jjVar.f28072a);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzdkg);
        a.a(parcel, 2, this.zzdkh, false);
        a.a(parcel, 3, this.zzbod);
        a.a(parcel, 1000, this.versionCode);
        a.b(parcel, a2);
    }
}
