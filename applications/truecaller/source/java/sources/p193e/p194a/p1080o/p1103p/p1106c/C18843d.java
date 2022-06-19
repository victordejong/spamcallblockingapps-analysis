package p193e.p194a.p1080o.p1103p.p1106c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.contextcall.db.incomingcallcontext.IncomingCallContextDbHelperImpl$delete$2", f = "IncomingCallContextDbHelper.kt", l = {36}, m = "invokeSuspend")
/* renamed from: e.a.o.p.c.d */
/* loaded from: classes8-dex2jar.jar:e/a/o/p/c/d.class */
public final class C18843d extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public int f52905e;

    /* renamed from: f */
    public final /* synthetic */ C18846g f52906f;

    /* renamed from: g */
    public final /* synthetic */ String f52907g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18843d(C18846g c18846g, String str, d dVar) {
        super(1, dVar);
        this.f52906f = c18846g;
        this.f52907g = str;
    }

    /* renamed from: d */
    public final Object m14422d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C18843d(this.f52906f, this.f52907g, dVar).m14420s(s.a);
    }

    /* renamed from: l */
    public final d<s> m14421l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C18843d(this.f52906f, this.f52907g, dVar);
    }

    /* renamed from: s */
    public final Object m14420s(Object obj) {
        a aVar = a.a;
        int i = this.f52905e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18833a m14413a = C18846g.m14413a(this.f52906f);
            String str = this.f52907g;
            this.f52905e = 1;
            if (m14413a.mo14424c(str, this) == aVar) {
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
