package p193e.p194a.p195a.p237h1.p239o;

import com.truecaller.messaging.urgent.UrgentConversation;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p237h1.C6328g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.urgent.service.UrgentMessageServicePresenter$startExpiryTimer$1", f = "UrgentMessageServicePresenter.kt", l = {211}, m = "invokeSuspend")
/* renamed from: e.a.a.h1.o.m */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/m.class */
public final class C6373m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f21238e;

    /* renamed from: f */
    public final /* synthetic */ C6371l f21239f;

    /* renamed from: g */
    public final /* synthetic */ UrgentConversation f21240g;

    /* renamed from: h */
    public final /* synthetic */ long f21241h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6373m(C6371l c6371l, UrgentConversation urgentConversation, long j, d dVar) {
        super(2, dVar);
        this.f21239f = c6371l;
        this.f21240g = urgentConversation;
        this.f21241h = j;
    }

    /* renamed from: i */
    public final d<s> m31384i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6373m(this.f21239f, this.f21240g, this.f21241h, dVar);
    }

    /* renamed from: k */
    public final Object m31383k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6373m(this.f21239f, this.f21240g, this.f21241h, dVar).m31382s(s.a);
    }

    /* renamed from: s */
    public final Object m31382s(Object obj) {
        a aVar = a.a;
        int i = this.f21238e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C6371l c6371l = this.f21239f;
            C6328g c6328g = c6371l.f21236q;
            UrgentConversation urgentConversation = this.f21240g;
            long mo13821a = c6371l.f21232m.mo13821a();
            Objects.requireNonNull(c6328g);
            l.e(urgentConversation, "conversation");
            long max = Math.max(0L, (c6328g.m31442a() + urgentConversation.f13902c) - mo13821a);
            this.f21238e = 1;
            if (s1.a.a.a.v0.f.d.D0(max, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C6371l c6371l2 = this.f21239f;
        long j = c6371l2.f21228i;
        long j2 = this.f21241h;
        if (j != j2) {
            c6371l2.m31398Ij(j2);
            this.f21239f.f21235p.mo13216j("miss", null);
        }
        return s.a;
    }
}
