package p131c.p161d.p362g.p363a.p364a.p365a.p366g;

import io.grpc.MethodDescriptor;
import io.grpc.stub.ClientCalls;
import p530d.p531a.AbstractC9225e;
import p530d.p531a.C9222d;
import p530d.p531a.p536x0.p537a.C9616b;
import p530d.p531a.p538y0.AbstractC9619a;
import p530d.p531a.p538y0.AbstractC9620b;
/* renamed from: c.d.g.a.a.a.g.l */
/* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/l.class */
public final class C6272l {

    /* renamed from: a */
    public static volatile MethodDescriptor<C6263g, C6267i> f19850a;

    /* renamed from: c.d.g.a.a.a.g.l$a */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/l$a.class */
    public class C6273a implements AbstractC9620b.AbstractC9621a<C6274b> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p530d.p531a.p538y0.AbstractC9620b.AbstractC9621a
        /* renamed from: a */
        public C6274b mo2166a(AbstractC9225e eVar, C9222d dVar) {
            return new C6274b(eVar, dVar, null);
        }
    }

    /* renamed from: c.d.g.a.a.a.g.l$b */
    /* loaded from: classes2-dex2jar.jar:c/d/g/a/a/a/g/l$b.class */
    public static final class C6274b extends AbstractC9619a<C6274b> {
        public C6274b(AbstractC9225e eVar, C9222d dVar) {
            super(eVar, dVar);
        }

        public /* synthetic */ C6274b(AbstractC9225e eVar, C9222d dVar, C6271k kVar) {
            this(eVar, dVar);
        }

        /* renamed from: a */
        public C6267i m21697a(C6263g gVar) {
            return (C6267i) ClientCalls.m283a(m2167b(), C6272l.m21699a(), m2170a(), gVar);
        }

        @Override // p530d.p531a.p538y0.AbstractC9620b
        /* renamed from: a */
        public C6274b mo2168a(AbstractC9225e eVar, C9222d dVar) {
            return new C6274b(eVar, dVar);
        }
    }

    /* renamed from: a */
    public static C6274b m21698a(AbstractC9225e eVar) {
        return (C6274b) AbstractC9619a.m2172a(new C6273a(), eVar);
    }

    /* renamed from: a */
    public static MethodDescriptor<C6263g, C6267i> m21699a() {
        MethodDescriptor<C6263g, C6267i> methodDescriptor = f19850a;
        MethodDescriptor<C6263g, C6267i> methodDescriptor2 = methodDescriptor;
        if (methodDescriptor == null) {
            synchronized (C6272l.class) {
                try {
                    MethodDescriptor<C6263g, C6267i> methodDescriptor3 = f19850a;
                    methodDescriptor2 = methodDescriptor3;
                    if (methodDescriptor3 == null) {
                        MethodDescriptor.C10300b e = MethodDescriptor.m626e();
                        e.m624a(MethodDescriptor.MethodType.UNARY);
                        e.m622a(MethodDescriptor.m630a("google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing", "FetchEligibleCampaigns"));
                        e.m621a(true);
                        e.m623a(C9616b.m2176a(C6263g.m21714x()));
                        e.m620b(C9616b.m2176a(C6267i.m21702y()));
                        methodDescriptor2 = e.m625a();
                        f19850a = methodDescriptor2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return methodDescriptor2;
    }
}
