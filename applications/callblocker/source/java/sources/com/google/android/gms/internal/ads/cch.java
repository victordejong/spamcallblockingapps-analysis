package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cch.class */
public final class cch implements dht<ccf> {

    /* renamed from: a */
    private final dig<AbstractC3267kb> f12718a;

    /* renamed from: b */
    private final dig<ScheduledExecutorService> f12719b;

    /* renamed from: c */
    private final dig<Boolean> f12720c;

    /* renamed from: d */
    private final dig<ApplicationInfo> f12721d;

    public cch(dig<AbstractC3267kb> digVar, dig<ScheduledExecutorService> digVar2, dig<Boolean> digVar3, dig<ApplicationInfo> digVar4) {
        this.f12718a = digVar;
        this.f12719b = digVar2;
        this.f12720c = digVar3;
        this.f12721d = digVar4;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new ccf(this.f12718a.mo9430a(), this.f12719b.mo9430a(), this.f12720c.mo9430a().booleanValue(), this.f12721d.mo9430a());
    }
}
