package p530d.p531a.p532v0;

import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import java.io.InputStream;
import p131c.p161d.p266c.p267a.C4924j;
import p530d.p531a.AbstractC9270l;
import p530d.p531a.C9210a;
import p530d.p531a.C9297q;
import p530d.p531a.C9306s;
/* renamed from: d.a.v0.c0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/c0.class */
public abstract class AbstractC9335c0 implements AbstractC9448o {
    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2539a() {
        mo2676c().mo2539a();
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public void mo2538a(int i) {
        mo2676c().mo2538a(i);
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public void mo2537a(AbstractC9270l lVar) {
        mo2676c().mo2537a(lVar);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2536a(C9297q qVar) {
        mo2676c().mo2536a(qVar);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2535a(C9306s sVar) {
        mo2676c().mo2535a(sVar);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2534a(C9449o0 o0Var) {
        mo2676c().mo2534a(o0Var);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2531a(Status status) {
        mo2676c().mo2531a(status);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2530a(ClientStreamListener clientStreamListener) {
        mo2676c().mo2530a(clientStreamListener);
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    /* renamed from: a */
    public void mo2529a(InputStream inputStream) {
        mo2676c().mo2529a(inputStream);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2467a(String str) {
        mo2676c().mo2467a(str);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: a */
    public void mo2527a(boolean z) {
        mo2676c().mo2527a(z);
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: b */
    public C9210a mo2466b() {
        return mo2676c().mo2466b();
    }

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: b */
    public void mo2526b(int i) {
        mo2676c().mo2526b(i);
    }

    /* renamed from: c */
    public abstract AbstractC9448o mo2676c();

    @Override // p530d.p531a.p532v0.AbstractC9448o
    /* renamed from: c */
    public void mo2523c(int i) {
        mo2676c().mo2523c(i);
    }

    @Override // p530d.p531a.p532v0.AbstractC9511v1
    public void flush() {
        mo2676c().flush();
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("delegate", mo2676c());
        return a.toString();
    }
}
