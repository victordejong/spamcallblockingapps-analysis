package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.pw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pw.class */
public final class C3423pw extends AbstractC2663a {
    public static final Parcelable.Creator<C3423pw> CREATOR = new C3426pz();

    /* renamed from: a */
    public final Bundle f17198a;

    /* renamed from: b */
    public final C3647yd f17199b;

    /* renamed from: c */
    public final ApplicationInfo f17200c;

    /* renamed from: d */
    public final String f17201d;

    /* renamed from: e */
    public final List<String> f17202e;

    /* renamed from: f */
    public final PackageInfo f17203f;

    /* renamed from: g */
    public final String f17204g;

    /* renamed from: h */
    public final boolean f17205h;

    /* renamed from: i */
    public final String f17206i;

    /* renamed from: j */
    public ciu f17207j;

    /* renamed from: k */
    public String f17208k;

    public C3423pw(Bundle bundle, C3647yd c3647yd, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, String str2, boolean z, String str3, ciu ciuVar, String str4) {
        this.f17198a = bundle;
        this.f17199b = c3647yd;
        this.f17201d = str;
        this.f17200c = applicationInfo;
        this.f17202e = list;
        this.f17203f = packageInfo;
        this.f17204g = str2;
        this.f17205h = z;
        this.f17206i = str3;
        this.f17207j = ciuVar;
        this.f17208k = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13939a(parcel, 1, this.f17198a, false);
        C2664b.m13937a(parcel, 2, (Parcelable) this.f17199b, i, false);
        C2664b.m13937a(parcel, 3, (Parcelable) this.f17200c, i, false);
        C2664b.m13932a(parcel, 4, this.f17201d, false);
        C2664b.m13923b(parcel, 5, this.f17202e, false);
        C2664b.m13937a(parcel, 6, (Parcelable) this.f17203f, i, false);
        C2664b.m13932a(parcel, 7, this.f17204g, false);
        C2664b.m13930a(parcel, 8, this.f17205h);
        C2664b.m13932a(parcel, 9, this.f17206i, false);
        C2664b.m13937a(parcel, 10, (Parcelable) this.f17207j, i, false);
        C2664b.m13932a(parcel, 11, this.f17208k, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
