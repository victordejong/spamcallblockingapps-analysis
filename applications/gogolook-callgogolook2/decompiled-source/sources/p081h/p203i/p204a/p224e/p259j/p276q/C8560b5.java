package p081h.p203i.p204a.p224e.p259j.p276q;
/* renamed from: h.i.a.e.j.q.b5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/b5.class */
public final class C8560b5 implements AbstractC8639i5 {

    /* renamed from: a */
    public AbstractC8639i5[] f19613a;

    public C8560b5(AbstractC8639i5... i5VarArr) {
        this.f19613a = i5VarArr;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8639i5
    /* renamed from: a */
    public final boolean mo17452a(Class<?> cls) {
        for (AbstractC8639i5 i5Var : this.f19613a) {
            if (i5Var.mo17452a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8639i5
    /* renamed from: b */
    public final AbstractC8623h5 mo17451b(Class<?> cls) {
        AbstractC8639i5[] i5VarArr;
        for (AbstractC8639i5 i5Var : this.f19613a) {
            if (i5Var.mo17452a(cls)) {
                return i5Var.mo17451b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
