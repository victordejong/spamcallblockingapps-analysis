package p193e.p1545k.p1546a.p1556c.p1570l0.p1571s;

import java.lang.reflect.Method;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1547a.AbstractC23321m0;
import p193e.p1545k.p1546a.p1556c.p1564g0.C23635a0;
import p193e.p1545k.p1546a.p1556c.p1570l0.C23760c;
/* renamed from: e.k.a.c.l0.s.k */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/l0/s/k.class */
public class C23787k extends AbstractC23321m0 {

    /* renamed from: b */
    public final C23760c f65897b;

    public C23787k(C23635a0 c23635a0, C23760c c23760c) {
        super(c23635a0.f65514d);
        this.f65897b = c23760c;
    }

    public C23787k(Class<?> cls, C23760c c23760c) {
        super(cls);
        this.f65897b = c23760c;
    }

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23321m0, p193e.p1545k.p1546a.p1547a.AbstractC23316k0
    /* renamed from: a */
    public boolean mo6067a(AbstractC23316k0<?> abstractC23316k0) {
        boolean z = false;
        if (abstractC23316k0.getClass() == C23787k.class) {
            C23787k c23787k = (C23787k) abstractC23316k0;
            z = false;
            if (c23787k.f64509a == this.f64509a) {
                z = false;
                if (c23787k.f65897b == this.f65897b) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23316k0
    /* renamed from: b */
    public AbstractC23316k0<Object> mo6066b(Class<?> cls) {
        return cls == this.f64509a ? this : new C23787k(cls, this.f65897b);
    }

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23316k0
    /* renamed from: c */
    public Object mo6065c(Object obj) {
        try {
            C23760c c23760c = this.f65897b;
            Method method = c23760c.f65843j;
            return method == null ? c23760c.f65844k.get(obj) : method.invoke(obj, null);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            StringBuilder m8728C = C22128a.m8728C("Problem accessing property '");
            m8728C.append(this.f65897b.f65836c.f64805a);
            m8728C.append("': ");
            m8728C.append(e2.getMessage());
            throw new IllegalStateException(m8728C.toString(), e2);
        }
    }

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23316k0
    /* renamed from: e */
    public AbstractC23316k0.C23317a mo6064e(Object obj) {
        return new AbstractC23316k0.C23317a(C23787k.class, this.f64509a, obj);
    }

    @Override // p193e.p1545k.p1546a.p1547a.AbstractC23316k0
    /* renamed from: f */
    public AbstractC23316k0<Object> mo6063f(Object obj) {
        return this;
    }
}
