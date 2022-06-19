package p193e.p194a.p195a.p198b;

import com.truecaller.premium.PremiumLaunchContext;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p682e.p683a.AbstractC12809r3;
import p193e.p194a.p682e.p683a.C12814s3;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.a.b.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/g.class */
public final class C4956g implements AbstractC4954f {

    /* renamed from: a */
    public final AbstractC19022f0 f16860a;

    /* renamed from: b */
    public final AbstractC6392i0 f16861b;

    /* renamed from: c */
    public final AbstractC19222c f16862c;

    /* renamed from: d */
    public final C20592g f16863d;

    /* renamed from: e */
    public final AbstractC12809r3 f16864e;

    /* renamed from: f */
    public final AbstractC4950d f16865f;

    @Inject
    public C4956g(AbstractC19022f0 abstractC19022f0, AbstractC6392i0 abstractC6392i0, AbstractC19222c abstractC19222c, C20592g c20592g, AbstractC12809r3 abstractC12809r3, AbstractC4950d abstractC4950d) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19222c, "clock");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC12809r3, "qaInboxPromoHelper");
        l.e(abstractC4950d, "callPromoHelper");
        this.f16860a = abstractC19022f0;
        this.f16861b = abstractC6392i0;
        this.f16862c = abstractC19222c;
        this.f16863d = c20592g;
        this.f16864e = abstractC12809r3;
        this.f16865f = abstractC4950d;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4951d0
    /* renamed from: a */
    public Object mo34097a(d<? super AbstractC6798d1> dVar) {
        AbstractC6798d1.C6820p c6820p = AbstractC6798d1.C6820p.f22367b;
        if (!this.f16860a.mo14245a()) {
            return c6820p;
        }
        AbstractC6798d1 m22649b = ((C12814s3) this.f16864e).m22649b();
        if (m22649b != null) {
            return m22649b;
        }
        AbstractC6798d1 mo34201r = this.f16865f.mo34201r();
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34218a();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34206m();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34202q();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34200s();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34194y();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34196w();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34216c();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34203p(PremiumLaunchContext.CALL_TAB_PROMO);
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34212g();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34213f();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34204o();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34208k();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34211h();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34195x();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34207l();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34209j();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34199t();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34210i();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34197v();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34217b();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34205n();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34198u();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34214e();
        }
        if (mo34201r == null) {
            mo34201r = this.f16865f.mo34215d();
        }
        if (mo34201r == null) {
            return c6820p;
        }
        if (!l.a(mo34201r.f22345a, this.f16861b.mo31234A3())) {
            C20592g c20592g = this.f16863d;
            if (this.f16862c.mo13819c() < this.f16861b.mo31127W0() + ((AbstractC20597i) c20592g.f57986n3.m10941a(c20592g, C20592g.f57695p6[222])).mo10939d(C4953e0.f16859a)) {
                return c6820p;
            }
        }
        this.f16861b.mo31036m(mo34201r.f22345a);
        this.f16861b.mo31164O3(this.f16862c.mo13819c());
        return mo34201r;
    }
}
