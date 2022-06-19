package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2299a;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bbp.class */
public final class bbp implements dht<bbe> {

    /* renamed from: a */
    private final dig<Context> f10884a;

    /* renamed from: b */
    private final dig<bay> f10885b;

    /* renamed from: c */
    private final dig<ctl> f10886c;

    /* renamed from: d */
    private final dig<C3647yd> f10887d;

    /* renamed from: e */
    private final dig<C2299a> f10888e;

    /* renamed from: f */
    private final dig<dwi> f10889f;

    /* renamed from: g */
    private final dig<Executor> f10890g;

    /* renamed from: h */
    private final dig<chh> f10891h;

    /* renamed from: i */
    private final dig<bbv> f10892i;

    /* renamed from: j */
    private final dig<ScheduledExecutorService> f10893j;

    public bbp(dig<Context> digVar, dig<bay> digVar2, dig<ctl> digVar3, dig<C3647yd> digVar4, dig<C2299a> digVar5, dig<dwi> digVar6, dig<Executor> digVar7, dig<chh> digVar8, dig<bbv> digVar9, dig<ScheduledExecutorService> digVar10) {
        this.f10884a = digVar;
        this.f10885b = digVar2;
        this.f10886c = digVar3;
        this.f10887d = digVar4;
        this.f10888e = digVar5;
        this.f10889f = digVar6;
        this.f10890g = digVar7;
        this.f10891h = digVar8;
        this.f10892i = digVar9;
        this.f10893j = digVar10;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new bbe(this.f10884a.mo9430a(), this.f10885b.mo9430a(), this.f10886c.mo9430a(), this.f10887d.mo9430a(), this.f10888e.mo9430a(), this.f10889f.mo9430a(), this.f10890g.mo9430a(), this.f10891h.mo9430a(), this.f10892i.mo9430a(), this.f10893j.mo9430a());
    }
}
