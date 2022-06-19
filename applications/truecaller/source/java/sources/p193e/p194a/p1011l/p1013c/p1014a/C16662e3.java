package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.C2752R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1193r5.AbstractC19954i0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.premiumusertab.list.WhoViewedMeCardPayloadCreator$createPayload$2", f = "WhoViewedMeCardPayloadCreator.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.l.c.a.e3 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/e3.class */
public final class C16662e3 extends i implements p<i0, d<? super AbstractC16736t.C16751o>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C16667f3 f46786e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16662e3(C16667f3 c16667f3, d dVar) {
        super(2, dVar);
        this.f46786e = c16667f3;
    }

    /* renamed from: i */
    public final d<s> m17151i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16662e3(this.f46786e, dVar);
    }

    /* renamed from: k */
    public final Object m17150k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16662e3(this.f46786e, dVar).m17149s(s.a);
    }

    /* renamed from: s */
    public final Object m17149s(Object obj) {
        int mo11751l;
        AbstractC16736t.C16751o c16751o;
        C25225a.m3932a3(obj);
        boolean z = this.f46786e.f46797b.mo16408H() && this.f46786e.f46796a.mo11755h();
        AbstractC19954i0 abstractC19954i0 = this.f46786e.f46796a;
        mo11751l = abstractC19954i0.mo11751l(abstractC19954i0.mo11745r(), null);
        if (mo11751l != 0) {
            String mo13759k = this.f46786e.f46798c.mo13759k(C2752R.plurals.PremiumUserTabWvmCardLabel, mo11751l, new Integer(mo11751l));
            l.d(mo13759k, "resourceProvider.getQuan…lookupCount, lookupCount)");
            String mo13768b = this.f46786e.f46798c.mo13768b(C2752R.string.PremiumUserTabWvmCardCtaViews, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…umUserTabWvmCardCtaViews)");
            c16751o = new AbstractC16736t.C16751o(z, mo13759k, mo13768b);
        } else {
            String mo13768b2 = this.f46786e.f46798c.mo13768b(C2752R.string.PremiumUserTabWvmCardLabelNoViews, new Object[0]);
            l.d(mo13768b2, "resourceProvider.getStri…erTabWvmCardLabelNoViews)");
            String mo13768b3 = this.f46786e.f46798c.mo13768b(C2752R.string.PremiumUserTabWvmCardCtaNoViews, new Object[0]);
            l.d(mo13768b3, "resourceProvider.getStri…UserTabWvmCardCtaNoViews)");
            c16751o = new AbstractC16736t.C16751o(z, mo13768b2, mo13768b3);
        }
        return c16751o;
    }
}
