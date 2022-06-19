package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akp.class */
public final class akp implements dht<akm> {

    /* renamed from: a */
    private final dig<amk> f9899a;

    /* renamed from: b */
    private final dig<Context> f9900b;

    /* renamed from: c */
    private final dig<cgq> f9901c;

    /* renamed from: d */
    private final dig<View> f9902d;

    /* renamed from: e */
    private final dig<act> f9903e;

    /* renamed from: f */
    private final dig<ami> f9904f;

    /* renamed from: g */
    private final dig<azg> f9905g;

    /* renamed from: h */
    private final dig<auu> f9906h;

    /* renamed from: i */
    private final dig<bst> f9907i;

    /* renamed from: j */
    private final dig<Executor> f9908j;

    public akp(dig<amk> digVar, dig<Context> digVar2, dig<cgq> digVar3, dig<View> digVar4, dig<act> digVar5, dig<ami> digVar6, dig<azg> digVar7, dig<auu> digVar8, dig<bst> digVar9, dig<Executor> digVar10) {
        this.f9899a = digVar;
        this.f9900b = digVar2;
        this.f9901c = digVar3;
        this.f9902d = digVar4;
        this.f9903e = digVar5;
        this.f9904f = digVar6;
        this.f9905g = digVar7;
        this.f9906h = digVar8;
        this.f9907i = digVar9;
        this.f9908j = digVar10;
    }

    /* renamed from: a */
    public static akm m12988a(amk amkVar, Context context, cgq cgqVar, View view, act actVar, ami amiVar, azg azgVar, auu auuVar, dhn<bst> dhnVar, Executor executor) {
        return new akm(amkVar, context, cgqVar, view, actVar, amiVar, azgVar, auuVar, dhnVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m12988a(this.f9899a.mo9430a(), this.f9900b.mo9430a(), this.f9901c.mo9430a(), this.f9902d.mo9430a(), this.f9903e.mo9430a(), this.f9904f.mo9430a(), this.f9905g.mo9430a(), this.f9906h.mo9430a(), dhu.m9446b(this.f9907i), this.f9908j.mo9430a());
    }
}
