package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aow.class */
public final class aow implements dht<aou> {

    /* renamed from: a */
    private final dig<ckz> f10152a;

    /* renamed from: b */
    private final dig<C3647yd> f10153b;

    /* renamed from: c */
    private final dig<ApplicationInfo> f10154c;

    /* renamed from: d */
    private final dig<String> f10155d;

    /* renamed from: e */
    private final dig<List<String>> f10156e;

    /* renamed from: f */
    private final dig<PackageInfo> f10157f;

    /* renamed from: g */
    private final dig<crt<String>> f10158g;

    /* renamed from: h */
    private final dig<AbstractC3558uw> f10159h;

    /* renamed from: i */
    private final dig<String> f10160i;

    /* renamed from: j */
    private final dig<cag<Bundle>> f10161j;

    private aow(dig<ckz> digVar, dig<C3647yd> digVar2, dig<ApplicationInfo> digVar3, dig<String> digVar4, dig<List<String>> digVar5, dig<PackageInfo> digVar6, dig<crt<String>> digVar7, dig<AbstractC3558uw> digVar8, dig<String> digVar9, dig<cag<Bundle>> digVar10) {
        this.f10152a = digVar;
        this.f10153b = digVar2;
        this.f10154c = digVar3;
        this.f10155d = digVar4;
        this.f10156e = digVar5;
        this.f10157f = digVar6;
        this.f10158g = digVar7;
        this.f10159h = digVar8;
        this.f10160i = digVar9;
        this.f10161j = digVar10;
    }

    /* renamed from: a */
    public static aow m12854a(dig<ckz> digVar, dig<C3647yd> digVar2, dig<ApplicationInfo> digVar3, dig<String> digVar4, dig<List<String>> digVar5, dig<PackageInfo> digVar6, dig<crt<String>> digVar7, dig<AbstractC3558uw> digVar8, dig<String> digVar9, dig<cag<Bundle>> digVar10) {
        return new aow(digVar, digVar2, digVar3, digVar4, digVar5, digVar6, digVar7, digVar8, digVar9, digVar10);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new aou(this.f10152a.mo9430a(), this.f10153b.mo9430a(), this.f10154c.mo9430a(), this.f10155d.mo9430a(), this.f10156e.mo9430a(), this.f10157f.mo9430a(), dhu.m9446b(this.f10158g), this.f10159h.mo9430a(), this.f10160i.mo9430a(), this.f10161j.mo9430a());
    }
}
