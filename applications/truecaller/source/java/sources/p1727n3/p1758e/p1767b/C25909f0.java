package p1727n3.p1758e.p1767b;

import android.view.Surface;
import java.util.Objects;
import p1727n3.p1758e.p1767b.C25910f1;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.f0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/f0.class */
public final class C25909f0 extends C25910f1.AbstractC25916f {

    /* renamed from: a */
    public final int f72472a;

    /* renamed from: b */
    public final Surface f72473b;

    public C25909f0(int i, Surface surface) {
        this.f72472a = i;
        Objects.requireNonNull(surface, "Null surface");
        this.f72473b = surface;
    }

    @Override // p1727n3.p1758e.p1767b.C25910f1.AbstractC25916f
    /* renamed from: a */
    public int mo2910a() {
        return this.f72472a;
    }

    @Override // p1727n3.p1758e.p1767b.C25910f1.AbstractC25916f
    /* renamed from: b */
    public Surface mo2909b() {
        return this.f72473b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C25910f1.AbstractC25916f)) {
            return false;
        }
        C25910f1.AbstractC25916f abstractC25916f = (C25910f1.AbstractC25916f) obj;
        if (this.f72472a != abstractC25916f.mo2910a() || !this.f72473b.equals(abstractC25916f.mo2909b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f72472a ^ 1000003) * 1000003) ^ this.f72473b.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Result{resultCode=");
        m8728C.append(this.f72472a);
        m8728C.append(", surface=");
        m8728C.append(this.f72473b);
        m8728C.append("}");
        return m8728C.toString();
    }
}
