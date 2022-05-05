package p081h.p203i.p325c.p337n.p338d.p348n;

import java.io.File;
import java.util.LinkedList;
import java.util.List;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p348n.C9786b;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.C9792b;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.C9795d;
/* renamed from: h.i.c.n.d.n.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/n/a.class */
public class C9785a {

    /* renamed from: a */
    public final C9786b.AbstractC9789c f22206a;

    public C9785a(C9786b.AbstractC9789c cVar) {
        this.f22206a = cVar;
    }

    /* renamed from: a */
    public void m14204a(AbstractC9793c cVar) {
        cVar.remove();
    }

    /* renamed from: a */
    public void m14203a(List<AbstractC9793c> list) {
        for (AbstractC9793c cVar : list) {
            m14204a(cVar);
        }
    }

    /* renamed from: a */
    public boolean m14205a() {
        File[] b = this.f22206a.mo14193b();
        File[] a = this.f22206a.mo14194a();
        if (b == null || b.length <= 0) {
            return a != null && a.length > 0;
        }
        return true;
    }

    /* renamed from: b */
    public List<AbstractC9793c> m14202b() {
        C9513b.m15015a().m15013a("Checking for crash reports...");
        File[] b = this.f22206a.mo14193b();
        File[] a = this.f22206a.mo14194a();
        LinkedList linkedList = new LinkedList();
        if (b != null) {
            for (File file : b) {
                C9513b.m15015a().m15013a("Found crash report " + file.getPath());
                linkedList.add(new C9795d(file));
            }
        }
        if (a != null) {
            for (File file2 : a) {
                linkedList.add(new C9792b(file2));
            }
        }
        if (linkedList.isEmpty()) {
            C9513b.m15015a().m15013a("No reports found.");
        }
        return linkedList;
    }
}
