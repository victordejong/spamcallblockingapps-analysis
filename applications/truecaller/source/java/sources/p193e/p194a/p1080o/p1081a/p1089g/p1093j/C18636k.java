package p193e.p194a.p1080o.p1081a.p1089g.p1093j;

import com.truecaller.data.entity.CallContextMessage;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1097b.AbstractC18745n0;
import p193e.p194a.p1080o.p1097b.C18747o0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.ui.custommessage.ondemand.OnDemandCustomMessagePresenter$sendMidCallReason$1", f = "OnDemandCustomMessagePresenter.kt", l = {190}, m = "invokeSuspend")
/* renamed from: e.a.o.a.g.j.k */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/j/k.class */
public final class C18636k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f52441e;

    /* renamed from: f */
    public int f52442f;

    /* renamed from: g */
    public final /* synthetic */ C18637l f52443g;

    /* renamed from: h */
    public final /* synthetic */ CallContextMessage f52444h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18636k(C18637l c18637l, CallContextMessage callContextMessage, d dVar) {
        super(2, dVar);
        this.f52443g = c18637l;
        this.f52444h = callContextMessage;
    }

    /* renamed from: i */
    public final d<s> m14688i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C18636k c18636k = new C18636k(this.f52443g, this.f52444h, dVar);
        c18636k.f52441e = obj;
        return c18636k;
    }

    /* renamed from: k */
    public final Object m14687k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C18636k c18636k = new C18636k(this.f52443g, this.f52444h, dVar);
        c18636k.f52441e = obj;
        return c18636k.m14686s(s.a);
    }

    /* renamed from: s */
    public final Object m14686s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f52442f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f52441e;
            CallContextMessage callContextMessage = this.f52444h;
            if (callContextMessage == null) {
                AbstractC18633h abstractC18633h = (AbstractC18633h) this.f52443g.f57683a;
                if (abstractC18633h != null) {
                    abstractC18633h.mo14741s();
                }
                return sVar;
            }
            AbstractC18745n0 abstractC18745n0 = this.f52443g.f52455o;
            this.f52442f = 1;
            Object m14557a = ((C18747o0) abstractC18745n0).m14557a(callContextMessage, this);
            obj = m14557a;
            if (m14557a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            AbstractC18633h abstractC18633h2 = (AbstractC18633h) this.f52443g.f57683a;
            if (abstractC18633h2 != null) {
                abstractC18633h2.mo14703Gi();
            }
            AbstractC18633h abstractC18633h3 = (AbstractC18633h) this.f52443g.f57683a;
            if (abstractC18633h3 != null) {
                abstractC18633h3.mo14720t7();
            }
        } else {
            AbstractC18633h abstractC18633h4 = (AbstractC18633h) this.f52443g.f57683a;
            if (abstractC18633h4 != null) {
                abstractC18633h4.mo14699jt(this.f52444h.f11498c);
            }
        }
        return sVar;
    }
}
