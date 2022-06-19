package p193e.p194a.p1011l.p1025p2.p1026d2;

import com.truecaller.premium.data.feature.PremiumFeature;
import e.m.e.k;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17203x;
import p193e.p194a.p1272u3.AbstractC20582a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Singleton
/* renamed from: e.a.l.p2.d2.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/d2/e.class */
public final class C17055e implements AbstractC17052b, AbstractC17057f {

    /* renamed from: a */
    public final k f47820a = new k();

    /* renamed from: b */
    public volatile List<C17051a> f47821b;

    /* renamed from: c */
    public final AbstractC17197v0 f47822c;

    /* renamed from: d */
    public final C17058g f47823d;

    /* renamed from: e */
    public final AbstractC20582a f47824e;

    /* renamed from: f */
    public final f f47825f;

    @e(c = "com.truecaller.premium.data.feature.PremiumFeatureManagerImpl$isFeatureAvailableSync$1", f = "PremiumFeatureManager.kt", l = {54}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.d2.e$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/d2/e$a.class */
    public static final class C17056a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f47826e;

        /* renamed from: g */
        public final /* synthetic */ PremiumFeature f47828g;

        /* renamed from: h */
        public final /* synthetic */ boolean f47829h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17056a(PremiumFeature premiumFeature, boolean z, d dVar) {
            super(2, dVar);
            C17055e.this = r5;
            this.f47828g = premiumFeature;
            this.f47829h = z;
        }

        /* renamed from: i */
        public final d<s> m16596i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17056a(this.f47828g, this.f47829h, dVar);
        }

        /* renamed from: k */
        public final Object m16595k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17056a(this.f47828g, this.f47829h, dVar).m16594s(s.a);
        }

        /* renamed from: s */
        public final Object m16594s(Object obj) {
            a aVar = a.a;
            int i = this.f47826e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C17055e c17055e = C17055e.this;
                PremiumFeature premiumFeature = this.f47828g;
                boolean z = this.f47829h;
                this.f47826e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c17055e.f47825f, new C17054d(c17055e, premiumFeature, z, null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @Inject
    public C17055e(AbstractC17197v0 abstractC17197v0, C17058g c17058g, AbstractC20582a abstractC20582a, @Named("IO") f fVar) {
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c17058g, "qaPremiumFeatureHelper");
        l.e(abstractC20582a, "environment");
        l.e(fVar, "asyncContext");
        this.f47822c = abstractC17197v0;
        this.f47823d = c17058g;
        this.f47824e = abstractC20582a;
        this.f47825f = fVar;
    }

    @Override // p193e.p194a.p1011l.p1025p2.p1026d2.AbstractC17052b
    /* renamed from: a */
    public boolean mo16600a(PremiumFeature premiumFeature, boolean z) {
        l.e(premiumFeature, "feature");
        return ((Boolean) s1.a.a.a.v0.f.d.c3((f) null, new C17056a(premiumFeature, z, null), 1, (Object) null)).booleanValue();
    }

    /* renamed from: b */
    public final List<C17051a> m16599b() {
        return s1.u.i.T(new C17051a[]{PremiumFeature.CALLER_ID.dto(true), PremiumFeature.SPAM_BLOCKING.dto(true), PremiumFeature.CALL_RECORDING.dto(true)});
    }

    /* renamed from: c */
    public final List<C17051a> m16598c() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(m16597d());
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.PREMIUM_SUPPORT, false, 1, null));
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.GOLD_CALLER_ID, false, 1, null));
        return arrayList;
    }

    /* renamed from: d */
    public final List<C17051a> m16597d() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(m16599b());
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.EXTENDED_SPAM_BLOCKING, false, 1, null));
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.NO_ADS, false, 1, null));
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.WHO_VIEWED_ME, false, 1, null));
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.PREMIUM_BADGE, false, 1, null));
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.CONTACT_REQUEST, false, 1, null));
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.INCOGNITO_MODE, false, 1, null));
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.GHOST_CALL, false, 1, null));
        arrayList.add(PremiumFeature.dto$default(PremiumFeature.ANNOUNCE_CALL, false, 1, null));
        return arrayList;
    }

    @Override // p193e.p194a.p1011l.p1025p2.p1026d2.AbstractC17057f
    /* renamed from: o */
    public void mo16593o(C17203x c17203x) {
        l.e(c17203x, "premium");
        List<C17051a> m16599b = (!(c17203x.f48290j ^ true) || !l.a(c17203x.f48287g, "regular")) ? (!(c17203x.f48290j ^ true) || !l.a(c17203x.f48287g, "gold")) ? m16599b() : m16598c() : m16597d();
        this.f47821b = m16599b;
        this.f47822c.mo16399f1(this.f47820a.m(m16599b));
    }
}
