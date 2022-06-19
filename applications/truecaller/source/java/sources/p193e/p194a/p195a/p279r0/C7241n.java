package p193e.p194a.p195a.p279r0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversationlist.MessagingPresenterImpl$updateViewPagerOffscreenPageLimit$1", f = "MessagingPresenterImpl.kt", l = {336}, m = "invokeSuspend")
/* renamed from: e.a.a.r0.n */
/* loaded from: classes5-dex2jar.jar:e/a/a/r0/n.class */
public final class C7241n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f23139e;

    /* renamed from: f */
    public final /* synthetic */ C7242o f23140f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7241n(C7242o c7242o, d dVar) {
        super(2, dVar);
        this.f23140f = c7242o;
    }

    /* renamed from: i */
    public final d<s> m29964i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7241n(this.f23140f, dVar);
    }

    /* renamed from: k */
    public final Object m29963k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7241n(this.f23140f, dVar).m29962s(s.a);
    }

    /* renamed from: s */
    public final Object m29962s(Object obj) {
        a aVar = a.a;
        int i = this.f23139e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f23139e = 1;
            if (s1.a.a.a.v0.f.d.D0(3000L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC7243p abstractC7243p = (AbstractC7243p) this.f23140f.f57683a;
        if (abstractC7243p != null) {
            abstractC7243p.mo29910my();
        }
        return s.a;
    }
}
