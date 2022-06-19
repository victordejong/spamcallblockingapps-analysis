package p193e.p194a.p195a.p200c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p231g.C6113f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.ConversationPresenterImpl$loadStats$1$1", f = "ConversationPresenterImpl.kt", l = {1423}, m = "invokeSuspend")
/* renamed from: e.a.a.c.h5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/h5.class */
public final class C5339h5 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f18272e;

    /* renamed from: f */
    public final /* synthetic */ long f18273f;

    /* renamed from: g */
    public final /* synthetic */ C5240e5 f18274g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5339h5(long j, d dVar, C5240e5 c5240e5) {
        super(2, dVar);
        this.f18273f = j;
        this.f18274g = c5240e5;
    }

    /* renamed from: i */
    public final d<s> m33279i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5339h5(this.f18273f, dVar, this.f18274g);
    }

    /* renamed from: k */
    public final Object m33278k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5339h5(this.f18273f, dVar, this.f18274g).m33277s(s.a);
    }

    /* renamed from: s */
    public final Object m33277s(Object obj) {
        a aVar = a.a;
        int i = this.f18272e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC6248w abstractC6248w = (AbstractC6248w) this.f18274g.f17971E.get();
            long j = this.f18273f;
            this.f18272e = 1;
            Object mo31553w = abstractC6248w.mo31553w(j, this);
            obj = mo31553w;
            if (mo31553w == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C6113f c6113f = (C6113f) obj;
        if (c6113f != null) {
            this.f18274g.m33536J2(c6113f);
        }
        return s.a;
    }
}
