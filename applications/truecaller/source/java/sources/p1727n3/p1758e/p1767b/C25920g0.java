package p1727n3.p1758e.p1767b;

import android.graphics.Rect;
import java.util.Objects;
import p1727n3.p1758e.p1767b.C25910f1;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.g0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/g0.class */
public final class C25920g0 extends C25910f1.AbstractC25917g {

    /* renamed from: a */
    public final Rect f72497a;

    /* renamed from: b */
    public final int f72498b;

    /* renamed from: c */
    public final int f72499c;

    public C25920g0(Rect rect, int i, int i2) {
        Objects.requireNonNull(rect, "Null cropRect");
        this.f72497a = rect;
        this.f72498b = i;
        this.f72499c = i2;
    }

    @Override // p1727n3.p1758e.p1767b.C25910f1.AbstractC25917g
    /* renamed from: a */
    public Rect mo2908a() {
        return this.f72497a;
    }

    @Override // p1727n3.p1758e.p1767b.C25910f1.AbstractC25917g
    /* renamed from: b */
    public int mo2907b() {
        return this.f72498b;
    }

    @Override // p1727n3.p1758e.p1767b.C25910f1.AbstractC25917g
    /* renamed from: c */
    public int mo2906c() {
        return this.f72499c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C25910f1.AbstractC25917g)) {
            return false;
        }
        C25910f1.AbstractC25917g abstractC25917g = (C25910f1.AbstractC25917g) obj;
        if (!this.f72497a.equals(abstractC25917g.mo2908a()) || this.f72498b != abstractC25917g.mo2907b() || this.f72499c != abstractC25917g.mo2906c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f72497a.hashCode() ^ 1000003) * 1000003) ^ this.f72498b) * 1000003) ^ this.f72499c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("TransformationInfo{cropRect=");
        m8728C.append(this.f72497a);
        m8728C.append(", rotationDegrees=");
        m8728C.append(this.f72498b);
        m8728C.append(", targetRotation=");
        return C22128a.m8697J2(m8728C, this.f72499c, "}");
    }
}
