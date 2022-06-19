package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byr.class */
public final class byr implements cae<Bundle>, cah<cae<Bundle>> {

    /* renamed from: a */
    private final ApplicationInfo f12503a;

    /* renamed from: b */
    private final PackageInfo f12504b;

    public byr(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        this.f12503a = applicationInfo;
        this.f12504b = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cae<Bundle>> mo11479a() {
        return crg.m10778a(this);
    }

    @Override // com.google.android.gms.internal.ads.cae
    /* renamed from: a */
    public final /* synthetic */ void mo11481a(Bundle bundle) {
        Bundle bundle2 = bundle;
        String str = this.f12503a.packageName;
        Integer valueOf = this.f12504b == null ? null : Integer.valueOf(this.f12504b.versionCode);
        bundle2.putString("pn", str);
        if (valueOf != null) {
            bundle2.putInt("vc", valueOf.intValue());
        }
    }
}
