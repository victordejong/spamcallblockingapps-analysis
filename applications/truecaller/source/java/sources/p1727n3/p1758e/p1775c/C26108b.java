package p1727n3.p1758e.p1775c;

import androidx.camera.lifecycle.LifecycleCameraRepository;
import java.util.Objects;
import p1727n3.p1758e.p1767b.p1772k1.C26064c;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.c.b */
/* loaded from: classes-dex2jar.jar:n3/e/c/b.class */
public final class C26108b extends LifecycleCameraRepository.AbstractC0098a {

    /* renamed from: a */
    public final AbstractC26992b0 f72829a;

    /* renamed from: b */
    public final C26064c.C26066b f72830b;

    public C26108b(AbstractC26992b0 abstractC26992b0, C26064c.C26066b c26066b) {
        Objects.requireNonNull(abstractC26992b0, "Null lifecycleOwner");
        this.f72829a = abstractC26992b0;
        Objects.requireNonNull(c26066b, "Null cameraId");
        this.f72830b = c26066b;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraRepository.AbstractC0098a
    /* renamed from: a */
    public C26064c.C26066b mo2712a() {
        return this.f72830b;
    }

    @Override // androidx.camera.lifecycle.LifecycleCameraRepository.AbstractC0098a
    /* renamed from: b */
    public AbstractC26992b0 mo2711b() {
        return this.f72829a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LifecycleCameraRepository.AbstractC0098a)) {
            return false;
        }
        LifecycleCameraRepository.AbstractC0098a abstractC0098a = (LifecycleCameraRepository.AbstractC0098a) obj;
        if (!this.f72829a.equals(abstractC0098a.mo2711b()) || !this.f72830b.equals(abstractC0098a.mo2712a())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f72829a.hashCode() ^ 1000003) * 1000003) ^ this.f72830b.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Key{lifecycleOwner=");
        m8728C.append(this.f72829a);
        m8728C.append(", cameraId=");
        m8728C.append(this.f72830b);
        m8728C.append("}");
        return m8728C.toString();
    }
}
