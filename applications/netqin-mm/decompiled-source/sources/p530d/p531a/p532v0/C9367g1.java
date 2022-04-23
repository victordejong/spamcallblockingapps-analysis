package p530d.p531a.p532v0;

import io.grpc.MethodDescriptor;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
/* renamed from: d.a.v0.g1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/g1.class */
public final class C9367g1 extends AbstractC9229f0.AbstractC9236f {

    /* renamed from: a */
    public final C9222d f36030a;

    /* renamed from: b */
    public final C9260k0 f36031b;

    /* renamed from: c */
    public final MethodDescriptor<?, ?> f36032c;

    public C9367g1(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
        C4933n.m24794a(methodDescriptor, "method");
        this.f36032c = methodDescriptor;
        C4933n.m24794a(k0Var, "headers");
        this.f36031b = k0Var;
        C4933n.m24794a(dVar, "callOptions");
        this.f36030a = dVar;
    }

    @Override // p530d.p531a.AbstractC9229f0.AbstractC9236f
    /* renamed from: a */
    public C9222d mo2877a() {
        return this.f36030a;
    }

    @Override // p530d.p531a.AbstractC9229f0.AbstractC9236f
    /* renamed from: b */
    public C9260k0 mo2876b() {
        return this.f36031b;
    }

    @Override // p530d.p531a.AbstractC9229f0.AbstractC9236f
    /* renamed from: c */
    public MethodDescriptor<?, ?> mo2875c() {
        return this.f36032c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C9367g1.class != obj.getClass()) {
            return false;
        }
        C9367g1 g1Var = (C9367g1) obj;
        if (!C4928k.m24808a(this.f36030a, g1Var.f36030a) || !C4928k.m24808a(this.f36031b, g1Var.f36031b) || !C4928k.m24808a(this.f36032c, g1Var.f36032c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(this.f36030a, this.f36031b, this.f36032c);
    }

    public final String toString() {
        return "[method=" + this.f36032c + " headers=" + this.f36031b + " callOptions=" + this.f36030a + "]";
    }
}
