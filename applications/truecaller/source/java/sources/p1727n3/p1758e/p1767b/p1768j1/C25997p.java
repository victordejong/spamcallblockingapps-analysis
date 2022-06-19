package p1727n3.p1758e.p1767b.p1768j1;

import android.util.Size;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.j1.p */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/p.class */
public final class C25997p extends AbstractC25994n1 {

    /* renamed from: a */
    public final Size f72649a;

    /* renamed from: b */
    public final Size f72650b;

    /* renamed from: c */
    public final Size f72651c;

    public C25997p(Size size, Size size2, Size size3) {
        Objects.requireNonNull(size, "Null analysisSize");
        this.f72649a = size;
        Objects.requireNonNull(size2, "Null previewSize");
        this.f72650b = size2;
        Objects.requireNonNull(size3, "Null recordSize");
        this.f72651c = size3;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25994n1
    /* renamed from: a */
    public Size mo2816a() {
        return this.f72649a;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25994n1
    /* renamed from: b */
    public Size mo2815b() {
        return this.f72650b;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25994n1
    /* renamed from: c */
    public Size mo2814c() {
        return this.f72651c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC25994n1)) {
            return false;
        }
        AbstractC25994n1 abstractC25994n1 = (AbstractC25994n1) obj;
        if (!this.f72649a.equals(abstractC25994n1.mo2816a()) || !this.f72650b.equals(abstractC25994n1.mo2815b()) || !this.f72651c.equals(abstractC25994n1.mo2814c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f72649a.hashCode() ^ 1000003) * 1000003) ^ this.f72650b.hashCode()) * 1000003) ^ this.f72651c.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SurfaceSizeDefinition{analysisSize=");
        m8728C.append(this.f72649a);
        m8728C.append(", previewSize=");
        m8728C.append(this.f72650b);
        m8728C.append(", recordSize=");
        m8728C.append(this.f72651c);
        m8728C.append("}");
        return m8728C.toString();
    }
}
