package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1556c.AbstractC23698i;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.f0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/f0.class */
public class C23656f0 extends AbstractC23663i implements Serializable {

    /* renamed from: c */
    public final Class<?> f65598c;

    /* renamed from: d */
    public final AbstractC23698i f65599d;

    /* renamed from: e */
    public final String f65600e;

    public C23656f0(AbstractC23652e0 abstractC23652e0, Class<?> cls, String str, AbstractC23698i abstractC23698i) {
        super(abstractC23652e0, null);
        this.f65598c = cls;
        this.f65599d = abstractC23698i;
        this.f65600e = str;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: b */
    public /* bridge */ /* synthetic */ AnnotatedElement mo6379b() {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: d */
    public Class<?> mo6378d() {
        return this.f65599d.f65728a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    /* renamed from: e */
    public AbstractC23698i mo6377e() {
        return this.f65599d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!C23914g.m5746u(obj, C23656f0.class)) {
            return false;
        }
        C23656f0 c23656f0 = (C23656f0) obj;
        if (c23656f0.f65598c != this.f65598c || !c23656f0.f65600e.equals(this.f65600e)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: g */
    public Class<?> mo6376g() {
        return this.f65598c;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String getName() {
        return this.f65600e;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public int hashCode() {
        return this.f65600e.hashCode();
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: i */
    public Member mo6375i() {
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: j */
    public Object mo6374j(Object obj) throws IllegalArgumentException {
        throw new IllegalArgumentException(C22128a.m8618h(C22128a.m8728C("Cannot get virtual property '"), this.f65600e, "'"));
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23663i
    /* renamed from: l */
    public AbstractC23636b mo6373l(C23678p c23678p) {
        return this;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23636b
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[virtual ");
        m8728C.append(mo6384h());
        m8728C.append("]");
        return m8728C.toString();
    }
}
