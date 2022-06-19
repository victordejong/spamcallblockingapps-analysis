package p193e.p194a.p1080o.p1081a.p1089g.p1093j;

import java.util.concurrent.TimeUnit;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.ui.custommessage.ondemand.OnDemandCustomMessagePresenter$maybeRegisterAutoDismissEvent$1", f = "OnDemandCustomMessagePresenter.kt", l = {68}, m = "invokeSuspend")
/* renamed from: e.a.o.a.g.j.j */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/g/j/j.class */
public final class C18635j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f52439e;

    /* renamed from: f */
    public final /* synthetic */ C18637l f52440f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18635j(C18637l c18637l, d dVar) {
        super(2, dVar);
        this.f52440f = c18637l;
    }

    /* renamed from: i */
    public final d<s> m14691i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18635j(this.f52440f, dVar);
    }

    /* renamed from: k */
    public final Object m14690k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18635j(this.f52440f, dVar).m14689s(s.a);
    }

    /* renamed from: s */
    public final Object m14689s(Object obj) {
        a aVar = a.a;
        int i = this.f52439e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            long millis = TimeUnit.MINUTES.toMillis(1L);
            this.f52439e = 1;
            if (s1.a.a.a.v0.f.d.D0(millis, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC18633h abstractC18633h = (AbstractC18633h) this.f52440f.f57683a;
        if (abstractC18633h != null) {
            abstractC18633h.mo14741s();
        }
        return s.a;
    }
}
