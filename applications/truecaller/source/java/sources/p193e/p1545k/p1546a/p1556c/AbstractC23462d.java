package p193e.p1545k.p1546a.p1556c;

import java.io.Serializable;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i;
import p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23932t;
/* renamed from: e.k.a.c.d */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d.class */
public interface AbstractC23462d extends AbstractC23932t {

    /* renamed from: I */
    public static final AbstractC23311k.C23315d f65086I = new AbstractC23311k.C23315d("", AbstractC23311k.EnumC23314c.ANY, "", "", AbstractC23311k.C23313b.f64482c, null);

    /* renamed from: e.k.a.c.d$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d$a.class */
    public static class C23463a implements AbstractC23462d, Serializable {

        /* renamed from: a */
        public final C23951v f65087a;

        /* renamed from: b */
        public final AbstractC23698i f65088b;

        /* renamed from: c */
        public final C23951v f65089c;

        /* renamed from: d */
        public final C23949u f65090d;

        /* renamed from: e */
        public final AbstractC23663i f65091e;

        public C23463a(C23951v c23951v, AbstractC23698i abstractC23698i, C23951v c23951v2, AbstractC23663i abstractC23663i, C23949u c23949u) {
            this.f65087a = c23951v;
            this.f65088b = abstractC23698i;
            this.f65089c = c23951v2;
            this.f65090d = c23949u;
            this.f65091e = abstractC23663i;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
        /* renamed from: c */
        public AbstractC23663i mo6108c() {
            return this.f65091e;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
        /* renamed from: d */
        public C23951v mo6107d() {
            return this.f65087a;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
        /* renamed from: e */
        public AbstractC23311k.C23315d mo6330e(AbstractC23458k<?> abstractC23458k, Class<?> cls) {
            AbstractC23663i abstractC23663i;
            AbstractC23311k.C23315d mo6856h = abstractC23458k.mo6856h(cls);
            AbstractC23426b m6864e = abstractC23458k.m6864e();
            if (m6864e == null || (abstractC23663i = this.f65091e) == null) {
                return mo6856h;
            }
            AbstractC23311k.C23315d mo6271n = m6864e.mo6271n(abstractC23663i);
            return mo6271n == null ? mo6856h : mo6856h.m7282f(mo6271n);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
        /* renamed from: f */
        public AbstractC23331r.C23333b mo6329f(AbstractC23458k<?> abstractC23458k, Class<?> cls) {
            AbstractC23663i abstractC23663i;
            AbstractC23331r.C23333b mo6857g = abstractC23458k.mo6857g(cls, this.f65088b.f65728a);
            AbstractC23426b m6864e = abstractC23458k.m6864e();
            if (m6864e == null || (abstractC23663i = this.f65091e) == null) {
                return mo6857g;
            }
            AbstractC23331r.C23333b mo6313J = m6864e.mo6313J(abstractC23663i);
            return mo6313J == null ? mo6857g : mo6857g.m7270a(mo6313J);
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
        public C23949u getMetadata() {
            return this.f65090d;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d, p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23932t
        public String getName() {
            return this.f65087a.f66304a;
        }

        @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
        public AbstractC23698i getType() {
            return this.f65088b;
        }
    }

    static {
        AbstractC23331r.C23333b c23333b = AbstractC23331r.C23333b.f64537e;
        AbstractC23331r.C23333b c23333b2 = AbstractC23331r.C23333b.f64537e;
    }

    /* renamed from: c */
    AbstractC23663i mo6108c();

    /* renamed from: d */
    C23951v mo6107d();

    /* renamed from: e */
    AbstractC23311k.C23315d mo6330e(AbstractC23458k<?> abstractC23458k, Class<?> cls);

    /* renamed from: f */
    AbstractC23331r.C23333b mo6329f(AbstractC23458k<?> abstractC23458k, Class<?> cls);

    C23949u getMetadata();

    @Override // p193e.p1545k.p1546a.p1556c.p1574n0.AbstractC23932t
    String getName();

    AbstractC23698i getType();
}
