package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbj.class */
public final class zzcbj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcbj> CREATOR = new yc0();

    /* renamed from: d */
    public final Bundle f33826d;

    /* renamed from: e */
    public final zzcgz f33827e;

    /* renamed from: f */
    public final ApplicationInfo f33828f;

    /* renamed from: g */
    public final String f33829g;

    /* renamed from: h */
    public final List<String> f33830h;

    /* renamed from: i */
    public final PackageInfo f33831i;

    /* renamed from: j */
    public final String f33832j;

    /* renamed from: k */
    public final String f33833k;

    /* renamed from: l */
    public zzfcj f33834l;

    /* renamed from: m */
    public String f33835m;

    public zzcbj(Bundle bundle, zzcgz zzcgzVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, String str2, String str3, zzfcj zzfcjVar, String str4) {
        this.f33826d = bundle;
        this.f33827e = zzcgzVar;
        this.f33829g = str;
        this.f33828f = applicationInfo;
        this.f33830h = list;
        this.f33831i = packageInfo;
        this.f33832j = str2;
        this.f33833k = str3;
        this.f33834l = zzfcjVar;
        this.f33835m = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16943e(parcel, 1, this.f33826d, false);
        C6170a.m16931q(parcel, 2, this.f33827e, i, false);
        C6170a.m16931q(parcel, 3, this.f33828f, i, false);
        C6170a.m16930r(parcel, 4, this.f33829g, false);
        C6170a.m16928t(parcel, 5, this.f33830h, false);
        C6170a.m16931q(parcel, 6, this.f33831i, i, false);
        C6170a.m16930r(parcel, 7, this.f33832j, false);
        C6170a.m16930r(parcel, 9, this.f33833k, false);
        C6170a.m16931q(parcel, 10, this.f33834l, i, false);
        C6170a.m16930r(parcel, 11, this.f33835m, false);
        C6170a.m16946b(parcel, m16947a);
    }
}
