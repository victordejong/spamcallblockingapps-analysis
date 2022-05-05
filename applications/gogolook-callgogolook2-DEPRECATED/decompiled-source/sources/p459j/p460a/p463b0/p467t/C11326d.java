package p459j.p460a.p463b0.p467t;

import java.util.List;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C14060l2;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.t.d */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/d.class */
public final class C11326d {
    /* renamed from: a */
    public static final void m9781a(List<AbstractC12391a> list, AbstractC15107a<? extends AbstractC12391a> aVar) {
        C15149k.m377b(list, "itemList");
        C15149k.m377b(aVar, "buildSeperatorItem");
        try {
            C13565v g = C13565v.m3921g();
            C15149k.m383a((Object) g, "DevelopMode.getInstance()");
            if (g.m23335b()) {
                AbstractC12391a aVar2 = (AbstractC12391a) aVar.invoke();
                if (aVar2 != null) {
                    list.add(aVar2);
                }
                list.add(new C11327e(3));
                list.add(new C11323c(3));
                list.add(new C11340k(3));
            }
        } catch (Throwable th) {
            C14060l2.m2705a(th);
        }
    }
}
