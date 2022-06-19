package p193e.p194a.p1080o.p1097b;

import p1727n3.p1834m0.AbstractC26857y;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.p1394q.C21782c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.utils.MessagesFetcherWorkActionUtilImpl$scheduleNow$1", f = "ContextCallMessagesFetcherWorkAction.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.o.b.d0 */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/d0.class */
public final class C18706d0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C18708e0 f52572e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18706d0(C18708e0 c18708e0, d dVar) {
        super(2, dVar);
        this.f52572e = c18708e0;
    }

    /* renamed from: i */
    public final d<s> m14619i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18706d0(this.f52572e, dVar);
    }

    /* renamed from: k */
    public final Object m14618k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C18708e0 c18708e0 = this.f52572e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        AbstractC26857y abstractC26857y = (AbstractC26857y) c18708e0.f52575a.getValue();
        l.d(abstractC26857y, "workManager");
        C21782c.m9083c(abstractC26857y, "ContextCallMessagesFetcherWorkAction", c18708e0.f52577c, null, null, 12);
        return sVar;
    }

    /* renamed from: s */
    public final Object m14617s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC26857y abstractC26857y = (AbstractC26857y) this.f52572e.f52575a.getValue();
        l.d(abstractC26857y, "workManager");
        C21782c.m9083c(abstractC26857y, "ContextCallMessagesFetcherWorkAction", this.f52572e.f52577c, null, null, 12);
        return s.a;
    }
}
