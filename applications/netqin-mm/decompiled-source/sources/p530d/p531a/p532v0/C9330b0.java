package p530d.p531a.p532v0;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import java.util.concurrent.Executor;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.C9625z;
import p530d.p531a.p532v0.AbstractC9451p;
/* renamed from: d.a.v0.b0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/b0.class */
public class C9330b0 implements AbstractC9451p {

    /* renamed from: a */
    public final Status f35974a;

    /* renamed from: b */
    public final ClientStreamListener.RpcProgress f35975b;

    /* renamed from: d.a.v0.b0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/b0$a.class */
    public class RunnableC9331a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9451p.AbstractC9452a f35976a;

        public RunnableC9331a(AbstractC9451p.AbstractC9452a aVar) {
            this.f35976a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35976a.mo460a(C9330b0.this.f35974a.m617a());
        }
    }

    public C9330b0(Status status, ClientStreamListener.RpcProgress rpcProgress) {
        C4933n.m24790a(!status.m602f(), "error must not be OK");
        this.f35974a = status;
        this.f35975b = rpcProgress;
    }

    @Override // p530d.p531a.p532v0.AbstractC9451p
    /* renamed from: a */
    public AbstractC9448o mo520a(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
        return new C9323a0(this.f35974a, this.f35975b);
    }

    @Override // p530d.p531a.p532v0.AbstractC9451p
    /* renamed from: a */
    public void mo521a(AbstractC9451p.AbstractC9452a aVar, Executor executor) {
        executor.execute(new RunnableC9331a(aVar));
    }

    @Override // p530d.p531a.AbstractC9224d0
    /* renamed from: b */
    public C9625z mo424b() {
        throw new UnsupportedOperationException("Not a real transport");
    }
}
