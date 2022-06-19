package p193e.p194a.p195a.p200c.p201a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p533e.AbstractC10066e;
import p193e.p194a.p437c.p552i.p559g.AbstractC10342a;
import p193e.p194a.p437c.p552i.p559g.C10343b;
import p193e.p194a.p437c.p552i.p559g.C10345c;
import p193e.p194a.p437c.p578p.C10489f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.smartcards.SmartCardManagerImpl$fetchConversationCards$2", f = "SmartCardsManager.kt", l = {379}, m = "invokeSuspend")
/* renamed from: e.a.a.c.a.i */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/a/i.class */
public final class C5034i extends i implements p<i0, d<? super C10489f>, Object> {

    /* renamed from: e */
    public int f17237e;

    /* renamed from: f */
    public final /* synthetic */ C5028h f17238f;

    /* renamed from: g */
    public final /* synthetic */ C10345c f17239g;

    /* renamed from: h */
    public final /* synthetic */ boolean f17240h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5034i(C5028h c5028h, C10345c c10345c, boolean z, d dVar) {
        super(2, dVar);
        this.f17238f = c5028h;
        this.f17239g = c10345c;
        this.f17240h = z;
    }

    /* renamed from: i */
    public final d<s> m33962i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5034i(this.f17238f, this.f17239g, this.f17240h, dVar);
    }

    /* renamed from: k */
    public final Object m33961k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5034i(this.f17238f, this.f17239g, this.f17240h, dVar).m33960s(s.a);
    }

    /* renamed from: s */
    public final Object m33960s(Object obj) {
        a aVar = a.a;
        int i = this.f17237e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC10066e abstractC10066e = this.f17238f.f17208t;
            C10345c c10345c = this.f17239g;
            abstractC10066e.mo26733i(c10345c.f30729b, c10345c.f30730c);
            AbstractC10342a abstractC10342a = this.f17238f.f17207s;
            C10345c c10345c2 = this.f17239g;
            boolean z = this.f17240h;
            this.f17237e = 1;
            Object m26321a = ((C10343b) abstractC10342a).m26321a(c10345c2, z, this);
            obj = m26321a;
            if (m26321a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
