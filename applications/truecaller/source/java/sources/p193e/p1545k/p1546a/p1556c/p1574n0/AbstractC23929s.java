package p193e.p1545k.p1546a.p1556c.p1574n0;

import java.io.Serializable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.c.n0.s */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/s.class */
public abstract class AbstractC23929s {

    /* renamed from: a */
    public static final AbstractC23929s f66188a = new C23931b();

    /* renamed from: e.k.a.c.n0.s$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/s$a.class */
    public static class C23930a extends AbstractC23929s implements Serializable {

        /* renamed from: b */
        public final AbstractC23929s f66189b;

        /* renamed from: c */
        public final AbstractC23929s f66190c;

        public C23930a(AbstractC23929s abstractC23929s, AbstractC23929s abstractC23929s2) {
            this.f66189b = abstractC23929s;
            this.f66190c = abstractC23929s2;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s
        /* renamed from: a */
        public String mo5728a(String str) {
            return this.f66189b.mo5728a(this.f66190c.mo5728a(str));
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("[ChainedTransformer(");
            m8728C.append(this.f66189b);
            m8728C.append(", ");
            m8728C.append(this.f66190c);
            m8728C.append(")]");
            return m8728C.toString();
        }
    }

    /* renamed from: e.k.a.c.n0.s$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/n0/s$b.class */
    public static final class C23931b extends AbstractC23929s implements Serializable {
        @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23929s
        /* renamed from: a */
        public String mo5728a(String str) {
            return str;
        }
    }

    /* renamed from: a */
    public abstract String mo5728a(String str);
}
