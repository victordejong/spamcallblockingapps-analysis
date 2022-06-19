package p193e.p194a.p292a4;

import com.truecaller.presence.AvailabilityTrigger;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.init.TrueAppInitManager$onAppCreate$32", f = "TrueAppInitManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.a4.v */
/* loaded from: classes10-dex2jar.jar:e/a/a4/v.class */
public final class C7469v extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C7452i0 f23724e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7469v(C7452i0 c7452i0, d dVar) {
        super(1, dVar);
        this.f23724e = c7452i0;
    }

    /* renamed from: d */
    public final Object m29576d(Object obj) {
        s sVar = s.a;
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        C7452i0 c7452i0 = this.f23724e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        ((AbstractC17419h) ((AbstractC19854f) c7452i0.f23691x.get()).mo11854a()).mo16128d(AvailabilityTrigger.USER_ACTION, false);
        return sVar;
    }

    /* renamed from: l */
    public final d<s> m29575l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C7469v(this.f23724e, dVar);
    }

    /* renamed from: s */
    public final Object m29574s(Object obj) {
        C25225a.m3932a3(obj);
        ((AbstractC17419h) ((AbstractC19854f) this.f23724e.f23691x.get()).mo11854a()).mo16128d(AvailabilityTrigger.USER_ACTION, false);
        return s.a;
    }
}
