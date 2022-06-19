package p193e.p194a.p195a.p276p0.p277m;

import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p538g.p546y.AbstractC10227k;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.p0.m.a */
/* loaded from: classes10-dex2jar.jar:e/a/a/p0/m/a.class */
public final class C7172a {

    /* renamed from: a */
    public final i0 f23059a;

    /* renamed from: b */
    public final a<AbstractC19854f<AbstractC6233m>> f23060b;

    /* renamed from: c */
    public final AbstractC10227k f23061c;

    /* renamed from: d */
    public final AbstractC10028o f23062d;

    /* renamed from: e */
    public final f f23063e;

    @e(c = "com.truecaller.messaging.categorizer.flag.CategorizerFlagObserver$onChanged$1", f = "CategorizerFlagObserver.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: e.a.a.p0.m.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a/p0/m/a$a.class */
    public static final class C7173a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f23064e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7173a(d dVar) {
            super(2, dVar);
            C7172a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m30024i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7173a(dVar);
        }

        /* renamed from: k */
        public final Object m30023k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7173a(dVar).m30022s(s.a);
        }

        /* renamed from: s */
        public final Object m30022s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f23064e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10227k abstractC10227k = C7172a.this.f23061c;
                this.f23064e = 1;
                Object mo26556a = abstractC10227k.mo26556a("on_feature_switch", this);
                obj = mo26556a;
                if (mo26556a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((AbstractC10227k.AbstractC10228a) obj) instanceof AbstractC10227k.AbstractC10228a.C10229a) {
                ((AbstractC6233m) ((AbstractC19854f) C7172a.this.f23060b.get()).mo11854a()).mo31692f0();
            }
            return s.a;
        }
    }

    @Inject
    public C7172a(a<AbstractC19854f<AbstractC6233m>> aVar, AbstractC10227k abstractC10227k, AbstractC10028o abstractC10028o, @Named("IO") f fVar) {
        l.e(aVar, "messagesStorage");
        l.e(abstractC10227k, "insightsCategorizerSeedManager");
        l.e(abstractC10028o, "insightConfig");
        l.e(fVar, "ioContext");
        this.f23060b = aVar;
        this.f23061c = abstractC10227k;
        this.f23062d = abstractC10028o;
        this.f23063e = fVar;
        this.f23059a = s1.a.a.a.v0.f.d.h(fVar);
    }

    /* renamed from: a */
    public final void m30025a(boolean z) {
        if (z) {
            s1.a.a.a.v0.f.d.w2(this.f23059a, (f) null, (j0) null, new C7173a(null), 3, (Object) null);
            this.f23062d.mo26814u0(false);
        }
    }
}
