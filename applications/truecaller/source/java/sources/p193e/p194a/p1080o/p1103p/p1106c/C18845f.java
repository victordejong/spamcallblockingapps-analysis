package p193e.p194a.p1080o.p1103p.p1106c;

import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContextDbHelperImpl$getCallContext$2", f = "IncomingCallContextDbHelper.kt", l = {31}, m = "invokeSuspend")
/* renamed from: e.a.o.p.c.f */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/c/f.class */
public final class C18845f extends i implements l<d<? super IncomingCallContext>, Object> {

    /* renamed from: e */
    public int f52911e;

    /* renamed from: f */
    public final /* synthetic */ C18846g f52912f;

    /* renamed from: g */
    public final /* synthetic */ String f52913g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18845f(C18846g c18846g, String str, d dVar) {
        super(1, dVar);
        this.f52912f = c18846g;
        this.f52913g = str;
    }

    /* renamed from: d */
    public final Object m14416d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C18845f(this.f52912f, this.f52913g, dVar).m14414s(s.a);
    }

    /* renamed from: l */
    public final d<s> m14415l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C18845f(this.f52912f, this.f52913g, dVar);
    }

    /* renamed from: s */
    public final Object m14414s(Object obj) {
        a aVar = a.a;
        int i = this.f52911e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18833a m14413a = C18846g.m14413a(this.f52912f);
            String str = this.f52913g;
            this.f52911e = 1;
            Object mo14426a = m14413a.mo14426a(str, this);
            obj = mo14426a;
            if (mo14426a == aVar) {
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
