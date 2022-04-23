package p530d.p531a;

import p530d.p531a.AbstractC9227f;
/* renamed from: d.a.v */
/* loaded from: classes2-dex2jar.jar:d/a/v.class */
public abstract class AbstractC9316v<ReqT, RespT> extends AbstractC9293o0<ReqT, RespT> {

    /* renamed from: d.a.v$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v$a.class */
    public static abstract class AbstractC9317a<ReqT, RespT> extends AbstractC9316v<ReqT, RespT> {

        /* renamed from: a */
        public final AbstractC9227f<ReqT, RespT> f35897a;

        public AbstractC9317a(AbstractC9227f<ReqT, RespT> fVar) {
            this.f35897a = fVar;
        }

        @Override // p530d.p531a.AbstractC9293o0
        /* renamed from: b */
        public AbstractC9227f<ReqT, RespT> mo2943b() {
            return this.f35897a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2162a(AbstractC9227f.AbstractC9228a<RespT> aVar, C9260k0 k0Var) {
        mo2943b().mo2162a((AbstractC9227f.AbstractC9228a<?>) aVar, k0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2746a(ReqT reqt) {
        mo2943b().mo2746a((AbstractC9227f<?, ?>) reqt);
    }
}
