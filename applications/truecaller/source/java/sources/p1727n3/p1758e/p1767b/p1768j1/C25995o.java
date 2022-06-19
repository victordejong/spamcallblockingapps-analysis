package p1727n3.p1758e.p1767b.p1768j1;

import java.util.Objects;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25989m1;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.j1.o */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/o.class */
public final class C25995o extends AbstractC25989m1 {

    /* renamed from: a */
    public final AbstractC25989m1.EnumC25991b f72645a;

    /* renamed from: b */
    public final AbstractC25989m1.EnumC25990a f72646b;

    public C25995o(AbstractC25989m1.EnumC25991b enumC25991b, AbstractC25989m1.EnumC25990a enumC25990a) {
        Objects.requireNonNull(enumC25991b, "Null configType");
        this.f72645a = enumC25991b;
        Objects.requireNonNull(enumC25990a, "Null configSize");
        this.f72646b = enumC25990a;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25989m1
    /* renamed from: a */
    public AbstractC25989m1.EnumC25990a mo2819a() {
        return this.f72646b;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25989m1
    /* renamed from: b */
    public AbstractC25989m1.EnumC25991b mo2818b() {
        return this.f72645a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC25989m1)) {
            return false;
        }
        AbstractC25989m1 abstractC25989m1 = (AbstractC25989m1) obj;
        if (!this.f72645a.equals(abstractC25989m1.mo2818b()) || !this.f72646b.equals(abstractC25989m1.mo2819a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f72645a.hashCode() ^ 1000003) * 1000003) ^ this.f72646b.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SurfaceConfig{configType=");
        m8728C.append(this.f72645a);
        m8728C.append(", configSize=");
        m8728C.append(this.f72646b);
        m8728C.append("}");
        return m8728C.toString();
    }
}
