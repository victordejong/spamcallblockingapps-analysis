package p193e.p194a.p1080o.p1103p.p1106c;

import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContextDbHelperImpl$insertOrUpdate$2", f = "IncomingCallContextDbHelper.kt", l = {26}, m = "invokeSuspend")
/* renamed from: e.a.o.p.c.h */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/c/h.class */
public final class C18848h extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f52918e;

    /* renamed from: f */
    public final /* synthetic */ C18846g f52919f;

    /* renamed from: g */
    public final /* synthetic */ IncomingCallContext f52920g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18848h(C18846g c18846g, IncomingCallContext incomingCallContext, d dVar) {
        super(1, dVar);
        this.f52919f = c18846g;
        this.f52920g = incomingCallContext;
    }

    /* renamed from: d */
    public final Object m14412d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C18848h(this.f52919f, this.f52920g, dVar).m14410s(s.a);
    }

    /* renamed from: l */
    public final d<s> m14411l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C18848h(this.f52919f, this.f52920g, dVar);
    }

    /* renamed from: s */
    public final Object m14410s(Object obj) {
        a aVar = a.a;
        int i = this.f52918e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18833a m14413a = C18846g.m14413a(this.f52919f);
            IncomingCallContext incomingCallContext = this.f52920g;
            this.f52918e = 1;
            if (m14413a.mo14425b(incomingCallContext, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
