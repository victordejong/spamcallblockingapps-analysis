package p530d.p531a.p532v0;

import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: d.a.v0.h0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/h0.class */
public abstract class AbstractC9369h0 implements AbstractC9377i1 {

    /* renamed from: a */
    public final AbstractC9377i1 f36034a;

    public AbstractC9369h0(AbstractC9377i1 i1Var) {
        C4933n.m24794a(i1Var, "buf");
        this.f36034a = i1Var;
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: Y */
    public int mo2358Y() {
        return this.f36034a.mo2358Y();
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: a */
    public void mo2357a(byte[] bArr, int i, int i2) {
        this.f36034a.mo2357a(bArr, i, i2);
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: f */
    public AbstractC9377i1 mo2356f(int i) {
        return this.f36034a.mo2356f(i);
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    public int readUnsignedByte() {
        return this.f36034a.readUnsignedByte();
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("delegate", this.f36034a);
        return a.toString();
    }
}
