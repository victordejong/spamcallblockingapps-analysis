package p193e.p194a.p294b.p336i.p340j.p341a;

import java.util.concurrent.Callable;
import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1751c0.C25650g;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
import p193e.p194a.p294b.p336i.p340j.p342b.C7943a;
import s1.s;
import s1.w.d;
/* renamed from: e.a.b.i.j.a.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/j/a/b.class */
public final class C7939b implements AbstractC7938a {

    /* renamed from: a */
    public final AbstractC25677q f24570a;

    /* renamed from: b */
    public final AbstractC25646c0 f24571b;

    /* renamed from: e.a.b.i.j.a.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/i/j/a/b$a.class */
    public class C7940a extends AbstractC25663k<C7943a> {
        public C7940a(C7939b c7939b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25663k
        public void bind(AbstractC26154f abstractC26154f, C7943a c7943a) {
            C7943a c7943a2 = c7943a;
            String str = c7943a2.f24573a;
            if (str == null) {
                abstractC26154f.mo2648y0(1);
            } else {
                abstractC26154f.mo2651f0(1, str);
            }
            abstractC26154f.mo2650l0(2, c7943a2.f24574b ? 1L : 0L);
            String str2 = c7943a2.f24575c;
            if (str2 == null) {
                abstractC26154f.mo2648y0(3);
            } else {
                abstractC26154f.mo2651f0(3, str2);
            }
            String str3 = c7943a2.f24576d;
            if (str3 == null) {
                abstractC26154f.mo2648y0(4);
            } else {
                abstractC26154f.mo2651f0(4, str3);
            }
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "INSERT OR REPLACE INTO `call_me_back` (`phone`,`enabled`,`message`,`button_text`) VALUES (?,?,?,?)";
        }
    }

    /* renamed from: e.a.b.i.j.a.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/i/j/a/b$b.class */
    public class C7941b extends AbstractC25646c0 {
        public C7941b(C7939b c7939b, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM call_me_back";
        }
    }

    /* renamed from: e.a.b.i.j.a.b$c */
    /* loaded from: classes6-dex2jar.jar:e/a/b/i/j/a/b$c.class */
    public class CallableC7942c implements Callable<s> {
        public CallableC7942c() {
            C7939b.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public s call() throws Exception {
            AbstractC26154f acquire = C7939b.this.f24571b.acquire();
            C7939b.this.f24570a.beginTransaction();
            try {
                acquire.m2673A();
                C7939b.this.f24570a.setTransactionSuccessful();
                return s.a;
            } finally {
                C7939b.this.f24570a.endTransaction();
                C7939b.this.f24571b.release(acquire);
            }
        }
    }

    public C7939b(AbstractC25677q abstractC25677q) {
        this.f24570a = abstractC25677q;
        new C7940a(this, abstractC25677q);
        this.f24571b = new C7941b(this, abstractC25677q);
    }

    @Override // p193e.p194a.p294b.p336i.p340j.p341a.AbstractC7938a
    /* renamed from: a */
    public Object mo29095a(d<? super s> dVar) {
        return C25650g.m3094c(this.f24570a, true, new CallableC7942c(), dVar);
    }
}
