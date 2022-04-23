package p459j.p460a.p474c0.p488f.p490q;

import p459j.p460a.p582w0.C14080m2;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.f.q.k */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/q/k.class */
public final class C11898k {

    /* renamed from: a */
    public static AbstractC11883f f26677a = new C11852a(new C11890i());

    static {
        new C11898k();
    }

    /* renamed from: a */
    public static final void m7979a(AbstractC11899l lVar) {
        C15149k.m377b(lVar, "request");
        if (f26677a.mo7992a(lVar.m7978a().m7971a())) {
            C14080m2.m2612a((Throwable) new IllegalArgumentException("duplicate job id: " + lVar.m7978a().m7971a()));
            return;
        }
        f26677a.mo7993a(lVar);
    }
}
