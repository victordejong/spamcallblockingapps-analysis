package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.amh;
import com.google.android.gms.internal.ads.aoz;
import com.google.android.gms.internal.ads.dwv;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cdy.class */
public final class cdy<R extends aoz<AdT>, AdT extends amh> implements cev<R, AdT> {

    /* renamed from: a */
    private final cev<R, AdT> f12803a;

    /* renamed from: b */
    private final cev<R, cei<AdT>> f12804b;

    /* renamed from: c */
    private final cjh<AdT> f12805c;
    @GuardedBy("this")

    /* renamed from: d */
    private R f12806d;

    /* renamed from: e */
    private final Executor f12807e;

    public cdy(cev<R, AdT> cevVar, cev<R, cei<AdT>> cevVar2, cjh<AdT> cjhVar, Executor executor) {
        this.f12803a = cevVar;
        this.f12804b = cevVar2;
        this.f12805c = cjhVar;
        this.f12807e = executor;
    }

    /* renamed from: a */
    private final crt<AdT> m11442a(ciy<AdT> ciyVar, cew cewVar, cex<R> cexVar) {
        crt<AdT> mo11429a;
        aoy<R> mo11387a = cexVar.mo11387a(cewVar.f12844b);
        if (ciyVar.f13160c != null) {
            ciyVar.f13160c.m12945l().mo11425a(mo11387a.mo12850b().mo12848d());
            mo11429a = crg.m10778a(ciyVar.f13160c);
        } else {
            mo11387a.mo12851a(ciyVar.f13159b);
            mo11429a = this.f12803a.mo11429a(cewVar, new cex(mo11387a) { // from class: com.google.android.gms.internal.ads.ceb

                /* renamed from: a */
                private final aoy f12811a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12811a = mo11387a;
                }

                @Override // com.google.android.gms.internal.ads.cex
                /* renamed from: a */
                public final aoy mo11387a(ceu ceuVar) {
                    return this.f12811a;
                }
            });
            this.f12806d = this.f12803a.mo11430a();
        }
        return mo11429a;
    }

    /* renamed from: b */
    public final R mo11430a() {
        R r;
        synchronized (this) {
            r = this.f12806d;
        }
        return r;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11444a(cew cewVar, cec cecVar, cex cexVar, cei ceiVar) {
        crt<AdT> mo11429a;
        cew cewVar2 = cewVar;
        if (ceiVar != null) {
            cec cecVar2 = new cec(cecVar.f12812a, cecVar.f12813b, cecVar.f12814c, cecVar.f12815d, cecVar.f12816e, cecVar.f12817f, ceiVar.f12827a);
            if (ceiVar.f12829c != null) {
                this.f12806d = null;
                this.f12805c.m11208a(cecVar2);
                mo11429a = m11442a(ceiVar.f12829c, cewVar, cexVar);
            } else {
                crt<cjl<AdT>> m11205b = this.f12805c.m11205b(cecVar2);
                if (m11205b != null) {
                    this.f12806d = (R) cexVar.mo11387a(cewVar.f12844b).mo12850b();
                    mo11429a = crg.m10782a(m11205b, new cqt(this, cexVar) { // from class: com.google.android.gms.internal.ads.cdz

                        /* renamed from: a */
                        private final cdy f12808a;

                        /* renamed from: b */
                        private final cex f12809b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f12808a = this;
                            this.f12809b = cexVar;
                        }

                        @Override // com.google.android.gms.internal.ads.cqt
                        /* renamed from: a */
                        public final crt mo7012a(Object obj) {
                            return this.f12808a.m11443a(this.f12809b, (cjl) obj);
                        }
                    }, this.f12807e);
                } else {
                    this.f12805c.m11208a(cecVar2);
                    cewVar2 = new cew(cewVar.f12844b, ceiVar.f12828b);
                }
            }
            return mo11429a;
        }
        mo11429a = this.f12803a.mo11429a(cewVar2, cexVar);
        this.f12806d = this.f12803a.mo11430a();
        return mo11429a;
    }

    @Override // com.google.android.gms.internal.ads.cev
    /* renamed from: a */
    public final crt<AdT> mo11429a(cew cewVar, cex<R> cexVar) {
        crb m10791a;
        synchronized (this) {
            chh mo12849a = cexVar.mo11387a(cewVar.f12844b).mo12850b().mo12849a();
            m10791a = crb.m10789c((crt) this.f12804b.mo11429a(cewVar, cexVar)).m10791a(new cqt(this, cewVar, new cec(cexVar, cewVar, mo12849a.f13040d, mo12849a.f13042f, this.f12807e, mo12849a.f13046j, null), cexVar) { // from class: com.google.android.gms.internal.ads.cdx

                /* renamed from: a */
                private final cdy f12799a;

                /* renamed from: b */
                private final cew f12800b;

                /* renamed from: c */
                private final cec f12801c;

                /* renamed from: d */
                private final cex f12802d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12799a = this;
                    this.f12800b = cewVar;
                    this.f12801c = cecVar;
                    this.f12802d = cexVar;
                }

                @Override // com.google.android.gms.internal.ads.cqt
                /* renamed from: a */
                public final crt mo7012a(Object obj) {
                    return this.f12799a.m11444a(this.f12800b, this.f12801c, this.f12802d, (cei) obj);
                }
            }, this.f12807e);
        }
        return m10791a;
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11443a(cex cexVar, cjl cjlVar) {
        if (cjlVar == null || cjlVar.f13179a == null || cjlVar.f13180b == null) {
            throw new zzclp("Empty prefetch");
        }
        cec cecVar = (cec) cjlVar.f13180b;
        cjlVar.f13179a.f13158a.m12888c().mo11975c((dwv.C3045g) ((dcw) dwv.C3045g.m8397a().m8380a(dwv.C3045g.C3046a.m8393a().m8385a(dwv.C3045g.EnumC3048b.IN_MEMORY).m8384a(dwv.C3045g.C3050d.m8379a())).mo9987g()));
        return m11442a(cjlVar.f13179a, cecVar.f12813b, cexVar);
    }
}
