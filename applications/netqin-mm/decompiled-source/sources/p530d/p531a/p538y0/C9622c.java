package p530d.p531a.p538y0;

import io.grpc.MethodDescriptor;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9225e;
import p530d.p531a.AbstractC9227f;
import p530d.p531a.AbstractC9242g;
import p530d.p531a.AbstractC9316v;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
/* renamed from: d.a.y0.c */
/* loaded from: classes2-dex2jar.jar:d/a/y0/c.class */
public final class C9622c {

    /* renamed from: d.a.y0.c$a */
    /* loaded from: classes2-dex2jar.jar:d/a/y0/c$a.class */
    public static final class C9623a implements AbstractC9242g {

        /* renamed from: a */
        public final C9260k0 f36698a;

        /* renamed from: d.a.y0.c$a$a */
        /* loaded from: classes2-dex2jar.jar:d/a/y0/c$a$a.class */
        public final class C9624a<ReqT, RespT> extends AbstractC9316v.AbstractC9317a<ReqT, RespT> {
            public C9624a(AbstractC9227f<ReqT, RespT> fVar) {
                super(fVar);
            }

            @Override // p530d.p531a.AbstractC9316v, p530d.p531a.AbstractC9227f
            /* renamed from: a */
            public void mo2162a(AbstractC9227f.AbstractC9228a<RespT> aVar, C9260k0 k0Var) {
                k0Var.m3066a(C9623a.this.f36698a);
                super.mo2162a(aVar, k0Var);
            }
        }

        public C9623a(C9260k0 k0Var) {
            C4933n.m24794a(k0Var, "extraHeaders");
            this.f36698a = k0Var;
        }

        @Override // p530d.p531a.AbstractC9242g
        /* renamed from: a */
        public <ReqT, RespT> AbstractC9227f<ReqT, RespT> mo2163a(MethodDescriptor<ReqT, RespT> methodDescriptor, C9222d dVar, AbstractC9225e eVar) {
            return new C9624a(eVar.mo359a(methodDescriptor, dVar));
        }
    }

    /* renamed from: a */
    public static AbstractC9242g m2165a(C9260k0 k0Var) {
        return new C9623a(k0Var);
    }
}
