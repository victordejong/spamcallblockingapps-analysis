package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/m.class */
public final class C23669m extends AbstractC23663i {

    /* renamed from: c */
    public final AbstractC23670n f65631c;

    /* renamed from: d */
    public final AbstractC23698i f65632d;

    /* renamed from: e */
    public final int f65633e;

    public C23669m(AbstractC23670n abstractC23670n, AbstractC23698i abstractC23698i, AbstractC23652e0 abstractC23652e0, C23678p c23678p, int i) {
        super(abstractC23652e0, c23678p);
        this.f65631c = abstractC23670n;
        this.f65632d = abstractC23698i;
        this.f65633e = i;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: b */
    public AnnotatedElement mo6379b() {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: d */
    public Class<?> mo6378d() {
        return this.f65632d.f65728a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: e */
    public AbstractC23698i mo6377e() {
        return this.f65632d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!C23914g.m5746u(obj, C23669m.class)) {
            return false;
        }
        C23669m c23669m = (C23669m) obj;
        if (!c23669m.f65631c.equals(this.f65631c) || c23669m.f65633e != this.f65633e) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: g */
    public Class<?> mo6376g() {
        return this.f65631c.mo6376g();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String getName() {
        return "";
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public int hashCode() {
        return this.f65631c.hashCode() + this.f65633e;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: i */
    public Member mo6375i() {
        return this.f65631c.mo6375i();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: j */
    public Object mo6374j(Object obj) throws UnsupportedOperationException {
        StringBuilder m8728C = C22128a.m8728C("Cannot call getValue() on constructor parameter of ");
        m8728C.append(mo6376g().getName());
        throw new UnsupportedOperationException(m8728C.toString());
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: l */
    public AbstractC23636b mo6373l(C23678p c23678p) {
        C23669m c23669m;
        if (c23678p == this.f65618b) {
            c23669m = this;
        } else {
            AbstractC23670n abstractC23670n = this.f65631c;
            int i = this.f65633e;
            abstractC23670n.f65634c[i] = c23678p;
            c23669m = abstractC23670n.m6369p(i);
        }
        return c23669m;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[parameter #");
        m8728C.append(this.f65633e);
        m8728C.append(", annotations: ");
        m8728C.append(this.f65618b);
        m8728C.append("]");
        return m8728C.toString();
    }
}
