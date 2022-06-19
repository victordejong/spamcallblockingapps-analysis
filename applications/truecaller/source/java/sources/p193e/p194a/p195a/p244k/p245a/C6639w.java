package p193e.p194a.p195a.p244k.p245a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p244k.p245a.p248g2.AbstractC6559a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import u3.a0;
@e(c = "com.truecaller.messaging.transport.im.ImManagerImpl$getLocationPreviewUrl$previewUrl$2$1", f = "ImManagerImpl.kt", l = {321}, m = "invokeSuspend")
/* renamed from: e.a.a.k.a.w */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/w.class */
public final class C6639w extends i implements p<i0, d<? super a0>, Object> {

    /* renamed from: e */
    public int f21916e;

    /* renamed from: f */
    public final /* synthetic */ double f21917f;

    /* renamed from: g */
    public final /* synthetic */ double f21918g;

    /* renamed from: h */
    public final /* synthetic */ C6629u f21919h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6639w(double d, double d2, d dVar, C6629u c6629u) {
        super(2, dVar);
        this.f21917f = d;
        this.f21918g = d2;
        this.f21919h = c6629u;
    }

    /* renamed from: i */
    public final d<s> m30608i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C6639w(this.f21917f, this.f21918g, dVar, this.f21919h);
    }

    /* renamed from: k */
    public final Object m30607k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C6639w(this.f21917f, this.f21918g, dVar, this.f21919h).m30606s(s.a);
    }

    /* renamed from: s */
    public final Object m30606s(Object obj) {
        a aVar = a.a;
        int i = this.f21916e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC6559a abstractC6559a = (AbstractC6559a) this.f21919h.f21892l.get();
            double d = this.f21917f;
            double d2 = this.f21918g;
            this.f21916e = 1;
            Object mo30767a = abstractC6559a.mo30767a(d, d2, this);
            obj = mo30767a;
            if (mo30767a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        String str = (String) obj;
        a0 a0Var = null;
        if (str != null) {
            l.f(str, "$this$toHttpUrlOrNull");
            try {
                l.f(str, "$this$toHttpUrl");
                a0.a aVar2 = new a0.a();
                aVar2.f((a0) null, str);
                a0Var = aVar2.b();
            } catch (IllegalArgumentException e) {
                a0Var = null;
            }
        }
        return a0Var;
    }
}
