package p530d.p531a.p532v0;

import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import p131c.p161d.p266c.p267a.C4924j;
import p530d.p531a.C9260k0;
import p530d.p531a.p532v0.AbstractC9521w1;
/* renamed from: d.a.v0.d0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/d0.class */
public abstract class AbstractC9340d0 implements ClientStreamListener {
    @Override // p530d.p531a.p532v0.AbstractC9521w1
    /* renamed from: a */
    public void mo2522a() {
        mo2675b().mo2522a();
    }

    @Override // io.grpc.internal.ClientStreamListener
    /* renamed from: a */
    public void mo575a(C9260k0 k0Var) {
        mo2675b().mo575a(k0Var);
    }

    @Override // p530d.p531a.p532v0.AbstractC9521w1
    /* renamed from: a */
    public void mo2521a(AbstractC9521w1.AbstractC9522a aVar) {
        mo2675b().mo2521a(aVar);
    }

    @Override // io.grpc.internal.ClientStreamListener
    /* renamed from: a */
    public void mo574a(Status status, C9260k0 k0Var) {
        mo2675b().mo574a(status, k0Var);
    }

    @Override // io.grpc.internal.ClientStreamListener
    /* renamed from: a */
    public void mo573a(Status status, ClientStreamListener.RpcProgress rpcProgress, C9260k0 k0Var) {
        mo2675b().mo573a(status, rpcProgress, k0Var);
    }

    /* renamed from: b */
    public abstract ClientStreamListener mo2675b();

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("delegate", mo2675b());
        return a.toString();
    }
}
