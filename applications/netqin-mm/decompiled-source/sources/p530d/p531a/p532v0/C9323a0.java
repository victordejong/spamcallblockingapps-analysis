package p530d.p531a.p532v0;

import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9260k0;
/* renamed from: d.a.v0.a0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/a0.class */
public final class C9323a0 extends C9324a1 {

    /* renamed from: b */
    public boolean f35923b;

    /* renamed from: c */
    public final Status f35924c;

    /* renamed from: d */
    public final ClientStreamListener.RpcProgress f35925d;

    public C9323a0(Status status) {
        this(status, ClientStreamListener.RpcProgress.PROCESSED);
    }

    public C9323a0(Status status, ClientStreamListener.RpcProgress rpcProgress) {
        C4933n.m24790a(!status.m602f(), "error must not be OK");
        this.f35924c = status;
        this.f35925d = rpcProgress;
    }

    @Override // p530d.p531a.p532v0.C9324a1, p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2534a(C9449o0 o0Var) {
        o0Var.m2718a("error", this.f35924c);
        o0Var.m2718a("progress", this.f35925d);
    }

    @Override // p530d.p531a.p532v0.C9324a1, p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2530a(ClientStreamListener clientStreamListener) {
        C4933n.m24775b(!this.f35923b, "already started");
        this.f35923b = true;
        clientStreamListener.mo573a(this.f35924c, this.f35925d, new C9260k0());
    }
}
