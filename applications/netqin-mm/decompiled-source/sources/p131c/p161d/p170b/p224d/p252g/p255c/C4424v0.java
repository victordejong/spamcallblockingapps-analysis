package p131c.p161d.p170b.p224d.p252g.p255c;
/* renamed from: c.d.b.d.g.c.v0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/v0.class */
public final class C4424v0 implements AbstractC4322b1 {

    /* renamed from: a */
    public AbstractC4322b1[] f16642a;

    public C4424v0(AbstractC4322b1... b1VarArr) {
        this.f16642a = b1VarArr;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4322b1
    /* renamed from: a */
    public final boolean mo25633a(Class<?> cls) {
        for (AbstractC4322b1 b1Var : this.f16642a) {
            if (b1Var.mo25633a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p255c.AbstractC4322b1
    /* renamed from: b */
    public final AbstractC4317a1 mo25632b(Class<?> cls) {
        AbstractC4322b1[] b1VarArr;
        for (AbstractC4322b1 b1Var : this.f16642a) {
            if (b1Var.mo25633a(cls)) {
                return b1Var.mo25632b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
