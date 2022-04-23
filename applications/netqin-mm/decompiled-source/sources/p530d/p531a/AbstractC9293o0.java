package p530d.p531a;

import p131c.p161d.p266c.p267a.C4924j;
/* renamed from: d.a.o0 */
/* loaded from: classes2-dex2jar.jar:d/a/o0.class */
public abstract class AbstractC9293o0<ReqT, RespT> extends AbstractC9227f<ReqT, RespT> {
    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2763a() {
        mo2943b().mo2763a();
    }

    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2762a(int i) {
        mo2943b().mo2762a(i);
    }

    @Override // p530d.p531a.AbstractC9227f
    /* renamed from: a */
    public void mo2745a(String str, Throwable th) {
        mo2943b().mo2745a(str, th);
    }

    /* renamed from: b */
    public abstract AbstractC9227f<?, ?> mo2943b();

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("delegate", mo2943b());
        return a.toString();
    }
}
