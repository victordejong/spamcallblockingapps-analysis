package p081h.p203i.p325c.p326a0;

import java.util.Iterator;
import java.util.Set;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
/* renamed from: h.i.c.a0.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/a0/c.class */
public class C9386c implements AbstractC9393i {

    /* renamed from: a */
    public final String f21425a;

    /* renamed from: b */
    public final C9387d f21426b;

    public C9386c(Set<AbstractC9389f> set, C9387d dVar) {
        this.f21425a = m15334a(set);
        this.f21426b = dVar;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9393i m15335a(AbstractC9483e eVar) {
        return new C9386c(eVar.mo15031c(AbstractC9389f.class), C9387d.m15331b());
    }

    /* renamed from: a */
    public static String m15334a(Set<AbstractC9389f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<AbstractC9389f> it = set.iterator();
        while (it.hasNext()) {
            AbstractC9389f next = it.next();
            sb.append(next.mo15329a());
            sb.append('/');
            sb.append(next.mo15327b());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static C9480d<AbstractC9393i> m15333b() {
        C9480d.C9482b a = C9480d.m15099a(AbstractC9393i.class);
        a.m15082a(C9498n.m15043e(AbstractC9389f.class));
        a.m15083a(C9385b.m15336a());
        return a.m15080b();
    }

    @Override // p081h.p203i.p325c.p326a0.AbstractC9393i
    /* renamed from: a */
    public String mo15322a() {
        if (this.f21426b.m15332a().isEmpty()) {
            return this.f21425a;
        }
        return this.f21425a + ' ' + m15334a(this.f21426b.m15332a());
    }
}
