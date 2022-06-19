package kotlin.p081e.p083b;

import kotlin.p085g.AbstractC1718a;
import kotlin.p085g.AbstractC1722e;
/* renamed from: kotlin.e.b.j */
/* loaded from: classes-dex2jar.jar:kotlin/e/b/j.class */
public abstract class AbstractC1696j extends AbstractC1686a implements AbstractC1722e {
    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC1696j)) {
            if (!(obj instanceof AbstractC1722e)) {
                return false;
            }
            return obj.equals(m3130c());
        }
        AbstractC1696j abstractC1696j = (AbstractC1696j) obj;
        if (!mo3110e().equals(abstractC1696j.mo3110e()) || !mo3109f().equals(abstractC1696j.mo3109f()) || !mo3108g().equals(abstractC1696j.mo3108g()) || !C1694h.m3123a(m3131b(), abstractC1696j.m3131b())) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public AbstractC1722e mo3113d() {
        return (AbstractC1722e) super.mo3113d();
    }

    public int hashCode() {
        return (((mo3110e().hashCode() * 31) + mo3109f().hashCode()) * 31) + mo3108g().hashCode();
    }

    public String toString() {
        AbstractC1718a c = m3130c();
        if (c != this) {
            return c.toString();
        }
        return "property " + mo3109f() + " (Kotlin reflection is not available)";
    }
}
