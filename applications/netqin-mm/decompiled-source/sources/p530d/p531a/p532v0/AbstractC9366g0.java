package p530d.p531a.p532v0;

import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9271l0;
/* renamed from: d.a.v0.g0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/g0.class */
public abstract class AbstractC9366g0 extends AbstractC9271l0 {

    /* renamed from: a */
    public final AbstractC9271l0 f36029a;

    public AbstractC9366g0(AbstractC9271l0 l0Var) {
        C4933n.m24794a(l0Var, "delegate can not be null");
        this.f36029a = l0Var;
    }

    @Override // p530d.p531a.AbstractC9271l0
    /* renamed from: a */
    public void mo571a(AbstractC9271l0.AbstractC9280f fVar) {
        this.f36029a.mo571a(fVar);
    }

    @Override // p530d.p531a.AbstractC9271l0
    @Deprecated
    /* renamed from: a */
    public void mo2878a(AbstractC9271l0.AbstractC9281g gVar) {
        this.f36029a.mo2878a(gVar);
    }

    @Override // p530d.p531a.AbstractC9271l0
    /* renamed from: b */
    public void mo559b() {
        this.f36029a.mo559b();
    }

    @Override // p530d.p531a.AbstractC9271l0
    /* renamed from: c */
    public void mo556c() {
        this.f36029a.mo556c();
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("delegate", this.f36029a);
        return a.toString();
    }
}
