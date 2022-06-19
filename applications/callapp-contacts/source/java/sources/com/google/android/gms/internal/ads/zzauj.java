package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzauj.class */
public final class zzauj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzauj> CREATOR = new C12918sv();
    private final ApplicationInfo applicationInfo;
    public final String packageName;
    public final zzbar zzdvi;
    public final PackageInfo zzdvo;
    public final List<String> zzdvy;
    public final String zzdwh;
    public final Bundle zzdys;
    public final String zzdyt;
    public zzdrc zzdyu;
    public String zzdyv;

    public zzauj(Bundle bundle, zzbar zzbarVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, String str2, String str3, zzdrc zzdrcVar, String str4) {
        this.zzdys = bundle;
        this.zzdvi = zzbarVar;
        this.packageName = str;
        this.applicationInfo = applicationInfo;
        this.zzdvy = list;
        this.zzdvo = packageInfo;
        this.zzdwh = str2;
        this.zzdyt = str3;
        this.zzdyu = zzdrcVar;
        this.zzdyv = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19110a(parcel, 1, this.zzdys, false);
        C12050a.m19107a(parcel, 2, this.zzdvi, i, false);
        C12050a.m19107a(parcel, 3, this.applicationInfo, i, false);
        C12050a.m19104a(parcel, 4, this.packageName, false);
        C12050a.m19103a(parcel, 5, this.zzdvy);
        C12050a.m19107a(parcel, 6, this.zzdvo, i, false);
        C12050a.m19104a(parcel, 7, this.zzdwh, false);
        C12050a.m19104a(parcel, 9, this.zzdyt, false);
        C12050a.m19107a(parcel, 10, this.zzdyu, i, false);
        C12050a.m19104a(parcel, 11, this.zzdyv, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
