package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzk.class */
public final class bzk implements dht<bzh> {

    /* renamed from: a */
    private final dig<crs> f12543a;

    /* renamed from: b */
    private final dig<ScheduledExecutorService> f12544b;

    /* renamed from: c */
    private final dig<String> f12545c;

    /* renamed from: d */
    private final dig<bsn> f12546d;

    /* renamed from: e */
    private final dig<Context> f12547e;

    /* renamed from: f */
    private final dig<chh> f12548f;

    /* renamed from: g */
    private final dig<bsl> f12549g;

    private bzk(dig<crs> digVar, dig<ScheduledExecutorService> digVar2, dig<String> digVar3, dig<bsn> digVar4, dig<Context> digVar5, dig<chh> digVar6, dig<bsl> digVar7) {
        this.f12543a = digVar;
        this.f12544b = digVar2;
        this.f12545c = digVar3;
        this.f12546d = digVar4;
        this.f12547e = digVar5;
        this.f12548f = digVar6;
        this.f12549g = digVar7;
    }

    /* renamed from: a */
    public static bzk m11536a(dig<crs> digVar, dig<ScheduledExecutorService> digVar2, dig<String> digVar3, dig<bsn> digVar4, dig<Context> digVar5, dig<chh> digVar6, dig<bsl> digVar7) {
        return new bzk(digVar, digVar2, digVar3, digVar4, digVar5, digVar6, digVar7);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bzh(this.f12543a.mo9430a(), this.f12544b.mo9430a(), this.f12545c.mo9430a(), this.f12546d.mo9430a(), this.f12547e.mo9430a(), this.f12548f.mo9430a(), this.f12549g.mo9430a());
    }
}
