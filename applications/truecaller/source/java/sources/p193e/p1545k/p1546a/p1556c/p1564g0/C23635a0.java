package p193e.p1545k.p1546a.p1556c.p1564g0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1547a.AbstractC23316k0;
import p193e.p1545k.p1546a.p1547a.AbstractC23323n0;
import p193e.p1545k.p1546a.p1547a.C23330q0;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.a0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/a0.class */
public class C23635a0 {

    /* renamed from: f */
    public static final C23635a0 f65510f = new C23635a0(C23951v.f66303e, Object.class, null, false, null);

    /* renamed from: a */
    public final C23951v f65511a;

    /* renamed from: b */
    public final Class<? extends AbstractC23316k0<?>> f65512b;

    /* renamed from: c */
    public final Class<? extends AbstractC23323n0> f65513c;

    /* renamed from: d */
    public final Class<?> f65514d;

    /* renamed from: e */
    public final boolean f65515e;

    public C23635a0(C23951v c23951v, Class<?> cls, Class<? extends AbstractC23316k0<?>> cls2, boolean z, Class<? extends AbstractC23323n0> cls3) {
        this.f65511a = c23951v;
        this.f65514d = cls;
        this.f65512b = cls2;
        this.f65515e = z;
        this.f65513c = cls3 == null ? C23330q0.class : cls3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ObjectIdInfo: propName=");
        m8728C.append(this.f65511a);
        m8728C.append(", scope=");
        m8728C.append(C23914g.m5776E(this.f65514d));
        m8728C.append(", generatorType=");
        m8728C.append(C23914g.m5776E(this.f65512b));
        m8728C.append(", alwaysAsId=");
        m8728C.append(this.f65515e);
        return m8728C.toString();
    }
}
