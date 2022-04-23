package p530d.p531a.p532v0;

import io.grpc.Context;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9218c;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
/* renamed from: d.a.v0.z0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/z0.class */
public final class C9556z0 extends AbstractC9218c.AbstractC9219a {

    /* renamed from: a */
    public final Object f36457a = new Object();

    /* renamed from: b */
    public AbstractC9448o f36458b;

    /* renamed from: c */
    public boolean f36459c;

    /* renamed from: d */
    public C9523x f36460d;

    public C9556z0(AbstractC9451p pVar, MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
        Context.m680g();
    }

    /* renamed from: a */
    public AbstractC9448o m2488a() {
        synchronized (this.f36457a) {
            if (this.f36458b == null) {
                C9523x xVar = new C9523x();
                this.f36460d = xVar;
                this.f36458b = xVar;
                return xVar;
            }
            return this.f36458b;
        }
    }

    /* renamed from: a */
    public final void m2487a(AbstractC9448o oVar) {
        boolean z = true;
        C4933n.m24775b(!this.f36459c, "already finalized");
        this.f36459c = true;
        synchronized (this.f36457a) {
            if (this.f36458b == null) {
                this.f36458b = oVar;
                return;
            }
            if (this.f36460d == null) {
                z = false;
            }
            C4933n.m24775b(z, "delayedStream is null");
            this.f36460d.m2525b(oVar);
        }
    }

    /* renamed from: a */
    public void m2486a(Status status) {
        C4933n.m24790a(!status.m602f(), "Cannot fail with OK status");
        C4933n.m24775b(!this.f36459c, "apply() or fail() already called");
        m2487a(new C9323a0(status));
    }
}
