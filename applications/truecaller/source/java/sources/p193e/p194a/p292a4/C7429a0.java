package p193e.p194a.p292a4;

import com.truecaller.TrueApp;
import com.truecaller.service.AlarmReceiver;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$41", f = "TrueAppInitManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.a4.a0 */
/* loaded from: classes10-dex2jar.jar:e/a/a4/a0.class */
public final class C7429a0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ TrueApp f23601e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7429a0(TrueApp trueApp, d dVar) {
        super(1, dVar);
        this.f23601e = trueApp;
    }

    /* renamed from: d */
    public final Object m29642d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        TrueApp trueApp = this.f23601e;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        AlarmReceiver.m34773a(trueApp, false);
        return sVar;
    }

    /* renamed from: l */
    public final d<s> m29641l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7429a0(this.f23601e, dVar);
    }

    /* renamed from: s */
    public final Object m29640s(Object obj) {
        C25225a.m3932a3(obj);
        AlarmReceiver.m34773a(this.f23601e, false);
        return s.a;
    }
}
