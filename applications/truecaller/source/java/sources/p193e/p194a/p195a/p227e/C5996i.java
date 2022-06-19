package p193e.p194a.p195a.p227e;

import com.amazon.device.ads.DTBMetricsConfiguration;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.e.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/i.class */
public final class C5996i extends AbstractC20574a<AbstractC5994h> implements AbstractC5991g {

    /* renamed from: d */
    public final f f19957d;

    /* renamed from: e */
    public final AbstractC6392i0 f19958e;

    /* renamed from: f */
    public final AbstractC19462a f19959f;

    /* renamed from: g */
    public final C20592g f19960g;

    /* renamed from: h */
    public final AbstractC7249d f19961h;

    @e(c = "com.truecaller.messaging.inboxcleanup.AutoCleanupPresenter$onConfirmClicked$1", f = "AutoCleanupPresenter.kt", l = {46}, m = "invokeSuspend")
    /* renamed from: e.a.a.e.i$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/i$a.class */
    public static final class C5997a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19962e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5997a(d dVar) {
            super(2, dVar);
            C5996i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32065i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5997a(dVar);
        }

        /* renamed from: k */
        public final Object m32064k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5997a(dVar).m32063s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x016f  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m32063s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 377
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p227e.C5996i.C5997a.m32063s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5996i(@Named("UI") f fVar, AbstractC6392i0 abstractC6392i0, AbstractC19462a abstractC19462a, C20592g c20592g, AbstractC7249d abstractC7249d) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC7249d, "defaultSmsHelper");
        this.f19957d = fVar;
        this.f19958e = abstractC6392i0;
        this.f19959f = abstractC19462a;
        this.f19960g = c20592g;
        this.f19961h = abstractC7249d;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.a.e.h, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5994h abstractC5994h) {
        AbstractC5994h abstractC5994h2 = abstractC5994h;
        l.e(abstractC5994h2, "presenterView");
        this.f57683a = abstractC5994h2;
        abstractC5994h2.mo32080Yw(this.f19958e.mo31158Q(), this.f19958e.mo31130V2(), this.f19958e.mo31132V0());
        abstractC5994h2.mo32084Fp(this.f19958e.mo30990u0());
        abstractC5994h2.mo32081X1();
        abstractC5994h2.mo32083Jc(this.f19960g.m10969e0().isEnabled());
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5991g
    /* renamed from: f2 */
    public void mo32068f2(boolean z) {
        this.f19958e.mo31103a4(z);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5991g
    /* renamed from: ib */
    public void mo32067ib() {
        AbstractC5994h abstractC5994h = (AbstractC5994h) this.f57683a;
        if (abstractC5994h != null) {
            abstractC5994h.mo32080Yw(this.f19958e.mo31158Q(), this.f19958e.mo31130V2(), this.f19958e.mo31132V0());
        }
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5991g
    /* renamed from: r1 */
    public void mo32066r1() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5997a(null), 3, (Object) null);
    }
}
