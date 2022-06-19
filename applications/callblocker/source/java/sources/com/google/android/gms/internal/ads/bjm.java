package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjm.class */
public final class bjm implements dht<PackageInfo> {

    /* renamed from: a */
    private final dig<Context> f11391a;

    /* renamed from: b */
    private final dig<ApplicationInfo> f11392b;

    private bjm(dig<Context> digVar, dig<ApplicationInfo> digVar2) {
        this.f11391a = digVar;
        this.f11392b = digVar2;
    }

    /* renamed from: a */
    public static bjm m11850a(dig<Context> digVar, dig<ApplicationInfo> digVar2) {
        return new bjm(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return bjb.m11862a(this.f11391a.mo9430a(), this.f11392b.mo9430a());
    }
}
