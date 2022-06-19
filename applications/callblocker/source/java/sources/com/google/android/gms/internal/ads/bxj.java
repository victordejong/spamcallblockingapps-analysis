package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bxj.class */
public final class bxj implements dht<bxf> {

    /* renamed from: a */
    private final dig<AbstractC3267kb> f12446a;

    /* renamed from: b */
    private final dig<ScheduledExecutorService> f12447b;

    /* renamed from: c */
    private final dig<AbstractC3558uw> f12448c;

    /* renamed from: d */
    private final dig<ApplicationInfo> f12449d;

    /* renamed from: e */
    private final dig<chh> f12450e;

    private bxj(dig<AbstractC3267kb> digVar, dig<ScheduledExecutorService> digVar2, dig<AbstractC3558uw> digVar3, dig<ApplicationInfo> digVar4, dig<chh> digVar5) {
        this.f12446a = digVar;
        this.f12447b = digVar2;
        this.f12448c = digVar3;
        this.f12449d = digVar4;
        this.f12450e = digVar5;
    }

    /* renamed from: a */
    public static bxj m11565a(dig<AbstractC3267kb> digVar, dig<ScheduledExecutorService> digVar2, dig<AbstractC3558uw> digVar3, dig<ApplicationInfo> digVar4, dig<chh> digVar5) {
        return new bxj(digVar, digVar2, digVar3, digVar4, digVar5);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bxf(this.f12446a.mo9430a(), this.f12447b.mo9430a(), this.f12448c.mo9430a(), this.f12449d.mo9430a(), this.f12450e.mo9430a());
    }
}
