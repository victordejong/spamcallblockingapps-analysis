package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.log.AssertionUtil;
import e.m.e.k;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.premiumusertab.list.PremiumSpamStatsCardPayloadCreator$createPayload$2", f = "PremiumSpamStatsCardPayloadCreator.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.l.c.a.v0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/v0.class */
public final class C16760v0 extends i implements p<i0, d<? super AbstractC16736t.C16748l>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C16764w0 f46987e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16760v0(C16764w0 c16764w0, d dVar) {
        super(2, dVar);
        this.f46987e = c16764w0;
    }

    /* renamed from: i */
    public final d<s> m17060i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16760v0(this.f46987e, dVar);
    }

    /* renamed from: k */
    public final Object m17059k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16764w0 c16764w0 = this.f46987e;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        AbstractC16736t.C16748l c16748l = null;
        if (c16764w0.f46992b.f32409k.m25512g()) {
            if (c16764w0.f46993c.mo16408H()) {
                c16748l = null;
            } else {
                C20592g c20592g = c16764w0.f46991a;
                String mo10938g = ((AbstractC20597i) c20592g.f57783M2.m10941a(c20592g, C20592g.f57695p6[194])).mo10938g();
                if (mo10938g.length() == 0) {
                    c16748l = null;
                } else {
                    try {
                        C16756u0 c16756u0 = (C16756u0) new k().f(mo10938g, C16756u0.class);
                        l.d(c16756u0, "premiumSpamStats");
                        c16748l = new AbstractC16736t.C16748l(c16756u0);
                    } catch (Exception e) {
                        AssertionUtil.reportWeirdnessButNeverCrash("Premium spam stat json format is invalid");
                        c16748l = null;
                    }
                }
            }
        }
        return c16748l;
    }

    /* renamed from: s */
    public final Object m17058s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC16736t.C16748l c16748l = null;
        if (this.f46987e.f46992b.f32409k.m25512g()) {
            if (this.f46987e.f46993c.mo16408H()) {
                c16748l = null;
            } else {
                C20592g c20592g = this.f46987e.f46991a;
                String mo10938g = ((AbstractC20597i) c20592g.f57783M2.m10941a(c20592g, C20592g.f57695p6[194])).mo10938g();
                if (mo10938g.length() == 0) {
                    return null;
                }
                try {
                    C16756u0 c16756u0 = (C16756u0) new k().f(mo10938g, C16756u0.class);
                    l.d(c16756u0, "premiumSpamStats");
                    c16748l = new AbstractC16736t.C16748l(c16756u0);
                } catch (Exception e) {
                    AssertionUtil.reportWeirdnessButNeverCrash("Premium spam stat json format is invalid");
                    c16748l = null;
                }
            }
        }
        return c16748l;
    }
}
