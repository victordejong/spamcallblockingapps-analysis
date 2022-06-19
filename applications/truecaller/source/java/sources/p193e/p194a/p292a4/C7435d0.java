package p193e.p194a.p292a4;

import com.truecaller.callrecording.CallRecordingManager;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$45", f = "TrueAppInitManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.a4.d0 */
/* loaded from: classes10-dex2jar.jar:e/a/a4/d0.class */
public final class C7435d0 extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C7452i0 f23611e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7435d0(C7452i0 c7452i0, d dVar) {
        super(1, dVar);
        this.f23611e = c7452i0;
    }

    /* renamed from: d */
    public final Object m29632d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        C7452i0 c7452i0 = this.f23611e;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        ((CallRecordingManager) c7452i0.f23666N.get()).mo17391t(false);
        return sVar;
    }

    /* renamed from: l */
    public final d<s> m29631l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7435d0(this.f23611e, dVar);
    }

    /* renamed from: s */
    public final Object m29630s(Object obj) {
        C25225a.m3932a3(obj);
        ((CallRecordingManager) this.f23611e.f23666N.get()).mo17391t(false);
        return s.a;
    }
}
