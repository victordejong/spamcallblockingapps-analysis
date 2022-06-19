package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.IOException;
import java.io.Serializable;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.AbstractC23372g;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1548b.p1552w.C23402h;
import p193e.p1545k.p1546a.p1556c.AbstractC23425a0;
import p193e.p1545k.p1546a.p1556c.AbstractC23757l;
import p193e.p1545k.p1546a.p1556c.C23733k;
import p193e.p1545k.p1546a.p1556c.C23946t;
import p193e.p1545k.p1546a.p1556c.p1566i0.C23699a;
/* renamed from: e.k.a.c.k0.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/b.class */
public abstract class AbstractC23736b extends AbstractC23757l implements Serializable {
    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23869m
    /* renamed from: c */
    public abstract void mo5714c(AbstractC23372g abstractC23372g, AbstractC23425a0 abstractC23425a0) throws IOException, C23379k;

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23757l
    public String toString() {
        C23699a c23699a = C23745k.f65805a;
        try {
            C23946t c23946t = C23745k.f65806b;
            Objects.requireNonNull(c23946t);
            C23402h c23402h = new C23402h(c23946t.f66282d.m7216c());
            try {
                c23946t.m5670a(c23946t.m5669b(c23402h), this);
                String m7232h = c23402h.f64803a.m7232h();
                c23402h.f64803a.m7224p();
                return m7232h;
            } catch (C23379k e) {
                throw e;
            } catch (IOException e2) {
                throw C23733k.m6162e(e2);
            }
        } catch (IOException e3) {
            throw new RuntimeException(e3);
        }
    }

    public Object writeReplace() {
        try {
            return new C23750p(C23745k.m6152b(this));
        } catch (IOException e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to JDK serialize `");
            m8728C.append(getClass().getSimpleName());
            m8728C.append("` value: ");
            m8728C.append(e.getMessage());
            throw new IllegalArgumentException(m8728C.toString(), e);
        }
    }
}
