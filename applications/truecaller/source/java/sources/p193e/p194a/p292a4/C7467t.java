package p193e.p194a.p292a4;

import com.truecaller.TrueApp;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.C8369c;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$15", f = "TrueAppInitManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.a4.t */
/* loaded from: classes10-dex2jar.jar:e/a/a4/t.class */
public final class C7467t extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ TrueApp f23722e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7467t(TrueApp trueApp, d dVar) {
        super(1, dVar);
        this.f23722e = trueApp;
    }

    /* renamed from: d */
    public final Object m29579d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        TrueApp trueApp = this.f23722e;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        C8369c.f25731b.m28630a(trueApp);
        return sVar;
    }

    /* renamed from: l */
    public final d<s> m29578l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7467t(this.f23722e, dVar);
    }

    /* renamed from: s */
    public final Object m29577s(Object obj) {
        C25225a.m3932a3(obj);
        C8369c.f25731b.m28630a(this.f23722e);
        return s.a;
    }
}
