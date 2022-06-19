package p193e.p194a.p195a.p278q0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p281t0.AbstractC7262a;
import p193e.p194a.p195a.p281t0.C7263b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
@e(c = "com.truecaller.messaging.clevertap.CleverTapMessagingUserPropGeneratorImpl$getInboxCleanerOtpCount$1", f = "CleverTapMessagingUserPropGenerator.kt", l = {122}, m = "invokeSuspend")
/* renamed from: e.a.a.q0.c */
/* loaded from: classes10-dex2jar.jar:e/a/a/q0/c.class */
public final class C7179c extends i implements p<i0, d<? super Integer>, Object> {

    /* renamed from: e */
    public int f23071e;

    /* renamed from: f */
    public final /* synthetic */ C7182f f23072f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7179c(C7182f c7182f, d dVar) {
        super(2, dVar);
        this.f23072f = c7182f;
    }

    /* renamed from: i */
    public final d<s> m30019i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7179c(this.f23072f, dVar);
    }

    /* renamed from: k */
    public final Object m30018k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7179c(this.f23072f, dVar).m30017s(s.a);
    }

    /* renamed from: s */
    public final Object m30017s(Object obj) {
        a aVar = a.a;
        int i = this.f23071e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7262a abstractC7262a = this.f23072f.f23080d;
            b bVar = new b();
            l.d(bVar, "DateTime.now()");
            long j = ((w3.b.a.e0.e) bVar).a;
            this.f23071e = 1;
            Object m29875b = ((C7263b) abstractC7262a).m29875b(j, this);
            obj = m29875b;
            if (m29875b == aVar) {
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
