package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/byv.class */
public final class byv implements dht<byr> {

    /* renamed from: a */
    private final dig<ApplicationInfo> f12508a;

    /* renamed from: b */
    private final dig<PackageInfo> f12509b;

    private byv(dig<ApplicationInfo> digVar, dig<PackageInfo> digVar2) {
        this.f12508a = digVar;
        this.f12509b = digVar2;
    }

    /* renamed from: a */
    public static byr m11551a(ApplicationInfo applicationInfo, PackageInfo packageInfo) {
        return new byr(applicationInfo, packageInfo);
    }

    /* renamed from: a */
    public static byv m11550a(dig<ApplicationInfo> digVar, dig<PackageInfo> digVar2) {
        return new byv(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11551a(this.f12508a.mo9430a(), this.f12509b.mo9430a());
    }
}
