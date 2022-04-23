package p626l.p634w;

import p626l.C14979k;
import p626l.C14989s;
import p626l.p634w.p635j.C15059b;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.w.f */
/* loaded from: classes3-dex2jar.jar:l/w/f.class */
public final class C15048f {
    /* renamed from: a */
    public static final <T> void m490a(AbstractC15118l<? super AbstractC15044d<? super T>, ? extends Object> lVar, AbstractC15044d<? super T> dVar) {
        C15149k.m377b(lVar, "$this$startCoroutine");
        C15149k.m377b(dVar, "completion");
        AbstractC15044d a = C15059b.m481a(C15059b.m480a(lVar, dVar));
        C14989s sVar = C14989s.f33022a;
        C14979k.C14980a aVar = C14979k.f33013a;
        C14979k.m657a(sVar);
        a.resumeWith(sVar);
    }

    /* renamed from: a */
    public static final <R, T> void m489a(AbstractC15122p<? super R, ? super AbstractC15044d<? super T>, ? extends Object> pVar, R r, AbstractC15044d<? super T> dVar) {
        C15149k.m377b(pVar, "$this$startCoroutine");
        C15149k.m377b(dVar, "completion");
        AbstractC15044d a = C15059b.m481a(C15059b.m479a(pVar, r, dVar));
        C14989s sVar = C14989s.f33022a;
        C14979k.C14980a aVar = C14979k.f33013a;
        C14979k.m657a(sVar);
        a.resumeWith(sVar);
    }
}
