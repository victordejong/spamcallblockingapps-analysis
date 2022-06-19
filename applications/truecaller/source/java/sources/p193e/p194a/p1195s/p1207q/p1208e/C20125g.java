package p193e.p194a.p1195s.p1207q.p1208e;

import com.truecaller.callhero_assistant.data.Carrier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callhero_assistant.onboarding.forward.OnboardingStepForwardPresenter$onAttachView$1", f = "OnboardingStepForwardPresenter.kt", l = {33}, m = "invokeSuspend")
/* renamed from: e.a.s.q.e.g */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/e/g.class */
public final class C20125g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56743e;

    /* renamed from: f */
    public final /* synthetic */ C20126h f56744f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC20124f f56745g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20125g(C20126h c20126h, AbstractC20124f abstractC20124f, d dVar) {
        super(2, dVar);
        this.f56744f = c20126h;
        this.f56745g = abstractC20124f;
    }

    /* renamed from: i */
    public final d<s> m11515i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20125g(this.f56744f, this.f56745g, dVar);
    }

    /* renamed from: k */
    public final Object m11514k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20125g(this.f56744f, this.f56745g, dVar).m11513s(s.a);
    }

    /* renamed from: s */
    public final Object m11513s(Object obj) {
        a aVar = a.a;
        int i = this.f56743e;
        boolean z = true;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC20113a abstractC20113a = this.f56744f.f56750h;
            this.f56743e = 1;
            Object m11525a = ((C20114b) abstractC20113a).m11525a(this);
            obj = m11525a;
            if (m11525a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        List<Carrier> list = (List) obj;
        if (list == null) {
            C12864a2.m22554g0(this.f56744f.f56751i, 2131886719, null, 0, 6, null);
        } else {
            this.f56744f.f56746d = list;
            AbstractC20124f abstractC20124f = this.f56745g;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (Carrier carrier : list) {
                arrayList.add(carrier.getName());
            }
            abstractC20124f.mo11518eo(arrayList);
            Iterator<Carrier> it = list.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = -1;
                    break;
                } else if (Boolean.valueOf(l.a(it.next().getId(), this.f56744f.f56753k.mo11434A2())).booleanValue()) {
                    break;
                } else {
                    i2++;
                }
            }
            Integer num = new Integer(i2);
            if (num.intValue() < 0) {
                z = false;
            }
            if (!Boolean.valueOf(z).booleanValue()) {
                num = null;
            }
            if (num != null) {
                this.f56745g.mo11520Mx(num.intValue());
            }
        }
        return s.a;
    }
}
