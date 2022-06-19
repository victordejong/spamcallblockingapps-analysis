package p193e.p194a.p195a.p198b;

import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.AbstractC6573i1;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p682e.p683a.AbstractC12809r3;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.b.c0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/c0.class */
public final class C4948c0 implements AbstractC4942b0 {

    /* renamed from: a */
    public final f f16822a;

    /* renamed from: b */
    public final AbstractC19022f0 f16823b;

    /* renamed from: c */
    public final AbstractC6392i0 f16824c;

    /* renamed from: d */
    public final AbstractC19219a0 f16825d;

    /* renamed from: e */
    public final AbstractC19222c f16826e;

    /* renamed from: f */
    public final C20592g f16827f;

    /* renamed from: g */
    public final AbstractC6573i1 f16828g;

    /* renamed from: h */
    public final AbstractC12809r3 f16829h;

    /* renamed from: i */
    public final AbstractC4950d f16830i;

    /* renamed from: j */
    public final boolean f16831j;

    @e(c = "com.truecaller.messaging.messaginglist.PersonalTabPromoStateManagerImpl$getPromoState$2", f = "PromoStateManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.b.c0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/b/c0$a.class */
    public static final class C4949a extends i implements p<i0, d<? super AbstractC6798d1>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4949a(d dVar) {
            super(2, dVar);
            C4948c0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m34221i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4949a(dVar);
        }

        /* renamed from: k */
        public final Object m34220k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4949a(dVar).m34219s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x0261, code lost:
            r0.f16824c.mo31039l2(r8.f22345a);
            r0.f16824c.mo31186K1(r0.f16826e.mo13819c());
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0075, code lost:
            if (r8 != null) goto L95;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x0206, code lost:
            if (r8 != null) goto L95;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x021b, code lost:
            if ((!s1.z.c.l.a(r8.f22345a, r0.f16824c.mo31073f4())) == false) goto L100;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x021e, code lost:
            r0 = r0.f16827f;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0258, code lost:
            if (r0.f16826e.mo13819c() >= (r0.f16824c.mo31205G2() + ((p193e.p194a.p1272u3.AbstractC20597i) r0.f57986n3.m10941a(r0, p193e.p194a.p1272u3.C20592g.f57695p6[222(0xde, float:3.11E-43)])).mo10939d(p193e.p194a.p195a.p198b.C4953e0.f16859a))) goto L100;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x025b, code lost:
            r11 = r0;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m34219s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 646
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4948c0.C4949a.m34219s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C4948c0(@Named("IO") f fVar, AbstractC19022f0 abstractC19022f0, AbstractC6392i0 abstractC6392i0, AbstractC19219a0 abstractC19219a0, AbstractC19222c abstractC19222c, C20592g c20592g, AbstractC6573i1 abstractC6573i1, AbstractC12809r3 abstractC12809r3, AbstractC4950d abstractC4950d, boolean z) {
        l.e(fVar, "asyncContext");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6392i0, "messageSettings");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19222c, "clock");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC6573i1, "imVersionManager");
        l.e(abstractC12809r3, "qaInboxPromoHelper");
        l.e(abstractC4950d, "callPromoHelper");
        this.f16822a = fVar;
        this.f16823b = abstractC19022f0;
        this.f16824c = abstractC6392i0;
        this.f16825d = abstractC19219a0;
        this.f16826e = abstractC19222c;
        this.f16827f = c20592g;
        this.f16828g = abstractC6573i1;
        this.f16829h = abstractC12809r3;
        this.f16830i = abstractC4950d;
        this.f16831j = z;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4951d0
    /* renamed from: a */
    public Object mo34097a(d<? super AbstractC6798d1> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f16822a, new C4949a(null), dVar);
    }

    /* renamed from: b */
    public final AbstractC6798d1 m34223b() {
        return (this.f16825d.mo13825h("android.permission.READ_SMS") || this.f16824c.mo31236A1()) ? null : AbstractC6798d1.C6825u.f22372b;
    }

    /* renamed from: c */
    public final AbstractC6798d1 m34222c() {
        AbstractC6798d1.C6828x c6828x;
        if (this.f16824c.mo31033m2() && !this.f16828g.mo30756d()) {
            if (TimeUnit.DAYS.toMillis(this.f16824c.mo30978w2()) + this.f16824c.mo31081e2() <= this.f16826e.mo13819c()) {
                c6828x = AbstractC6798d1.C6828x.f22375b;
                return c6828x;
            }
        }
        c6828x = null;
        return c6828x;
    }
}
