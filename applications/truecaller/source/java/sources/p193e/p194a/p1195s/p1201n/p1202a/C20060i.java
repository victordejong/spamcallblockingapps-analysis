package p193e.p194a.p1195s.p1201n.p1202a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1195s.p1197k.p1198c.C20023a;
import p193e.p194a.p1195s.p1212s.AbstractC20179e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callhero_assistant.inbox.callscreening.CallScreeningPresenter$loadCalls$1", f = "CallScreeningPresenter.kt", l = {69}, m = "invokeSuspend")
/* renamed from: e.a.s.n.a.i */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/a/i.class */
public final class C20060i extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f56633e;

    /* renamed from: f */
    public final /* synthetic */ C20061j f56634f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20060i(C20061j c20061j, d dVar) {
        super(2, dVar);
        this.f56634f = c20061j;
    }

    /* renamed from: i */
    public final d<s> m11599i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20060i(this.f56634f, dVar);
    }

    /* renamed from: k */
    public final Object m11598k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C20060i(this.f56634f, dVar).m11597s(s.a);
    }

    /* renamed from: s */
    public final Object m11597s(Object obj) {
        a aVar = a.a;
        int i = this.f56633e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC20179e abstractC20179e = this.f56634f.f56639h;
            this.f56633e = 1;
            Object mo11415b = abstractC20179e.mo11415b(this);
            obj = mo11415b;
            if (mo11415b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C20023a c20023a = (C20023a) obj;
        C20023a c20023a2 = this.f56634f.f56636e;
        if (c20023a2 != null) {
            c20023a2.close();
        }
        C20061j c20061j = this.f56634f;
        c20061j.f56636e = c20023a;
        AbstractC20059h abstractC20059h = (AbstractC20059h) c20061j.f57683a;
        if (abstractC20059h != null) {
            abstractC20059h.mo11603c0();
        }
        return s.a;
    }
}
