package p193e.p194a.p195a.p200c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$checkHasIncomingIm$1", f = "ConversationMessagesPresenter.kt", l = {1022}, m = "invokeSuspend")
/* renamed from: e.a.a.c.u4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/u4.class */
public final class C5775u4 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f19358e;

    /* renamed from: f */
    public int f19359f;

    /* renamed from: g */
    public final /* synthetic */ C5744t4 f19360g;

    /* renamed from: h */
    public final /* synthetic */ long f19361h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5775u4(C5744t4 c5744t4, long j, d dVar) {
        super(2, dVar);
        this.f19360g = c5744t4;
        this.f19361h = j;
    }

    /* renamed from: i */
    public final d<s> m32628i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5775u4(this.f19360g, this.f19361h, dVar);
    }

    /* renamed from: k */
    public final Object m32627k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5775u4(this.f19360g, this.f19361h, dVar).m32626s(s.a);
    }

    /* renamed from: s */
    public final Object m32626s(Object obj) {
        AbstractC5585n5 abstractC5585n5;
        AbstractC5835z4 abstractC5835z4;
        a aVar = a.a;
        int i = this.f19359f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C5744t4 c5744t4 = this.f19360g;
            abstractC5585n5 = c5744t4.f19219J;
            AbstractC6248w abstractC6248w = (AbstractC6248w) c5744t4.f19220K.get();
            long j = this.f19361h;
            this.f19358e = abstractC5585n5;
            this.f19359f = 1;
            obj = abstractC6248w.mo31550z(j, this);
            if (obj == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            abstractC5585n5 = (AbstractC5585n5) this.f19358e;
            C25225a.m3932a3(obj);
        }
        abstractC5585n5.mo32843x(((Boolean) obj).booleanValue());
        if (!this.f19360g.f19219J.mo32874A() && (abstractC5835z4 = (AbstractC5835z4) this.f19360g.f57683a) != null) {
            abstractC5835z4.mo32373A();
        }
        return s.a;
    }
}
