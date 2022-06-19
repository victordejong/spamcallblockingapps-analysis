package p1727n3.p1758e.p1767b.p1768j1;

import android.os.Handler;
import java.util.Objects;
import java.util.concurrent.Executor;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.b.j1.m */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/m.class */
public final class C25987m extends AbstractC25951e0 {

    /* renamed from: a */
    public final Executor f72628a;

    /* renamed from: b */
    public final Handler f72629b;

    public C25987m(Executor executor, Handler handler) {
        Objects.requireNonNull(executor, "Null cameraExecutor");
        this.f72628a = executor;
        Objects.requireNonNull(handler, "Null schedulerHandler");
        this.f72629b = handler;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25951e0
    /* renamed from: a */
    public Executor mo2826a() {
        return this.f72628a;
    }

    @Override // p1727n3.p1758e.p1767b.p1768j1.AbstractC25951e0
    /* renamed from: b */
    public Handler mo2825b() {
        return this.f72629b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC25951e0)) {
            return false;
        }
        AbstractC25951e0 abstractC25951e0 = (AbstractC25951e0) obj;
        if (!this.f72628a.equals(abstractC25951e0.mo2826a()) || !this.f72629b.equals(abstractC25951e0.mo2825b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f72628a.hashCode() ^ 1000003) * 1000003) ^ this.f72629b.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CameraThreadConfig{cameraExecutor=");
        m8728C.append(this.f72628a);
        m8728C.append(", schedulerHandler=");
        m8728C.append(this.f72629b);
        m8728C.append("}");
        return m8728C.toString();
    }
}
