package p1727n3.p1834m0.p1835c0.p1844s;

import p1727n3.p1751c0.AbstractC25646c0;
import p1727n3.p1751c0.AbstractC25663k;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: n3.m0.c0.s.o */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/s/o.class */
public final class C26757o implements AbstractC26756n {

    /* renamed from: a */
    public final AbstractC25677q f74896a;

    /* renamed from: b */
    public final AbstractC25663k<C26755m> f74897b;

    /* renamed from: c */
    public final AbstractC25646c0 f74898c;

    /* renamed from: d */
    public final AbstractC25646c0 f74899d;

    /* renamed from: n3.m0.c0.s.o$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/o$b.class */
    public class C26758b extends AbstractC25646c0 {
        public C26758b(C26757o c26757o, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* renamed from: n3.m0.c0.s.o$c */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/s/o$c.class */
    public class C26759c extends AbstractC25646c0 {
        public C26759c(C26757o c26757o, AbstractC25677q abstractC25677q) {
            super(abstractC25677q);
        }

        @Override // p1727n3.p1751c0.AbstractC25646c0
        public String createQuery() {
            return "DELETE FROM WorkProgress";
        }
    }

    public C26757o(AbstractC25677q abstractC25677q) {
        this.f74896a = abstractC25677q;
        this.f74897b = new a(this, abstractC25677q);
        this.f74898c = new C26758b(this, abstractC25677q);
        this.f74899d = new C26759c(this, abstractC25677q);
    }

    /* renamed from: a */
    public void m1363a(String str) {
        this.f74896a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74898c.acquire();
        if (str == null) {
            acquire.mo2648y0(1);
        } else {
            acquire.mo2651f0(1, str);
        }
        this.f74896a.beginTransaction();
        try {
            acquire.m2673A();
            this.f74896a.setTransactionSuccessful();
        } finally {
            this.f74896a.endTransaction();
            this.f74898c.release(acquire);
        }
    }

    /* renamed from: b */
    public void m1362b() {
        this.f74896a.assertNotSuspendingTransaction();
        AbstractC26154f acquire = this.f74899d.acquire();
        this.f74896a.beginTransaction();
        try {
            acquire.m2673A();
            this.f74896a.setTransactionSuccessful();
        } finally {
            this.f74896a.endTransaction();
            this.f74899d.release(acquire);
        }
    }
}
