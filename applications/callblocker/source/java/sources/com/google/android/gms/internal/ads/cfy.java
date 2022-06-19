package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.reward.C2391a;
import com.google.android.gms.internal.ads.apb;
import com.google.android.gms.internal.ads.atf;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cfy.class */
public final class cfy implements btm<bdr> {

    /* renamed from: a */
    private final Context f12897a;

    /* renamed from: b */
    private final Executor f12898b;

    /* renamed from: c */
    private final afh f12899c;

    /* renamed from: d */
    private final cfa f12900d;

    /* renamed from: e */
    private final cev<bdu, bdr> f12901e;

    /* renamed from: f */
    private final chb f12902f;
    @GuardedBy("this")

    /* renamed from: g */
    private final chj f12903g;
    @GuardedBy("this")

    /* renamed from: h */
    private crt<bdr> f12904h;

    public cfy(Context context, Executor executor, afh afhVar, cev<bdu, bdr> cevVar, cfa cfaVar, chj chjVar, chb chbVar) {
        this.f12897a = context;
        this.f12898b = executor;
        this.f12899c = afhVar;
        this.f12901e = cevVar;
        this.f12900d = cfaVar;
        this.f12903g = chjVar;
        this.f12902f = chbVar;
    }

    /* renamed from: b */
    public final bdx m11394a(ceu ceuVar) {
        cgd cgdVar = (cgd) ceuVar;
        cfa m11424a = cfa.m11424a(this.f12900d);
        return this.f12899c.mo13349m().mo12048a(new apb.C2790a().m12840a(this.f12897a).m12836a(cgdVar.f12917a).m12835a(cgdVar.f12918b).m12837a(this.f12902f).m12841a()).mo12047a(new atf.C2797a().m12755a((AbstractC2792app) m11424a, this.f12898b).m12751a((arg) m11424a, this.f12898b).m12754a((apv) m11424a, this.f12898b).m12756a((C2391a) m11424a, this.f12898b).m12753a((aqe) m11424a, this.f12898b).m12749a((arw) m11424a, this.f12898b).m12747a(m11424a).m12758a());
    }

    /* renamed from: a */
    public final void m11395a(int i) {
        this.f12903g.m11327d().m11364a(i);
    }

    @Override // com.google.android.gms.internal.ads.btm
    /* renamed from: a */
    public final boolean mo11396a() {
        return this.f12904h != null && !this.f12904h.isDone();
    }

    @Override // com.google.android.gms.internal.ads.btm
    /* renamed from: a */
    public final boolean mo11391a(dya dyaVar, String str, btl btlVar, bto<? super bdr> btoVar) {
        boolean z;
        C3462rh c3462rh = new C3462rh(dyaVar, str);
        String str2 = btlVar instanceof cfv ? ((cfv) btlVar).f12894a : null;
        if (c3462rh.f17304b == null) {
            C3556uu.m6749c("Ad unit ID should not be null for rewarded video ad.");
            this.f12898b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.cfx

                /* renamed from: a */
                private final cfy f12896a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12896a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f12896a.m11390b();
                }
            });
            z = false;
        } else if (this.f12904h == null || this.f12904h.isDone()) {
            chp.m11299a(this.f12897a, c3462rh.f17303a.f16072f);
            chh m11325e = this.f12903g.m11336a(c3462rh.f17304b).m11341a(dyd.m8191b()).m11342a(c3462rh.f17303a).m11325e();
            cgd cgdVar = new cgd(null);
            cgdVar.f12917a = m11325e;
            cgdVar.f12918b = str2;
            this.f12904h = this.f12901e.mo11429a(new cew(cgdVar), new cex(this) { // from class: com.google.android.gms.internal.ads.cga

                /* renamed from: a */
                private final cfy f12908a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12908a = this;
                }

                @Override // com.google.android.gms.internal.ads.cex
                /* renamed from: a */
                public final aoy mo11387a(ceu ceuVar) {
                    return this.f12908a.m11394a(ceuVar);
                }
            });
            crg.m10781a(this.f12904h, new cfz(this, btoVar, cgdVar), this.f12898b);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final /* synthetic */ void m11390b() {
        this.f12900d.mo11258a(1);
    }
}
