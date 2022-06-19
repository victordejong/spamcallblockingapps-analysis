package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apl.class */
public final class apl implements dht<AbstractC3501st> {

    /* renamed from: a */
    private final apm f10189a;

    /* renamed from: b */
    private final dig<Context> f10190b;

    /* renamed from: c */
    private final dig<C3647yd> f10191c;

    /* renamed from: d */
    private final dig<cgr> f10192d;

    /* renamed from: e */
    private final dig<AbstractC3503sv> f10193e;

    private apl(apm apmVar, dig<Context> digVar, dig<C3647yd> digVar2, dig<cgr> digVar3, dig<AbstractC3503sv> digVar4) {
        this.f10189a = apmVar;
        this.f10190b = digVar;
        this.f10191c = digVar2;
        this.f10192d = digVar3;
        this.f10193e = digVar4;
    }

    /* renamed from: a */
    public static apl m12817a(apm apmVar, dig<Context> digVar, dig<C3647yd> digVar2, dig<cgr> digVar3, dig<AbstractC3503sv> digVar4) {
        return new apl(apmVar, digVar, digVar2, digVar3, digVar4);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        Context mo9430a = this.f10190b.mo9430a();
        C3647yd mo9430a2 = this.f10191c.mo9430a();
        cgr mo9430a3 = this.f10192d.mo9430a();
        return mo9430a3.f13002x != null ? new C3492sk(mo9430a, mo9430a2, mo9430a3.f13002x, mo9430a3.f12994p.f13013b, this.f10193e.mo9430a()) : null;
    }
}
