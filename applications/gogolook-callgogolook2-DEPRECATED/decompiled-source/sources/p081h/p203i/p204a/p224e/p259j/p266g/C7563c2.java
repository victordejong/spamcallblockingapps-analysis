package p081h.p203i.p204a.p224e.p259j.p266g;
/* renamed from: h.i.a.e.j.g.c2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/c2.class */
public final class C7563c2 implements AbstractC7620j2 {

    /* renamed from: a */
    public AbstractC7620j2[] f17795a;

    public C7563c2(AbstractC7620j2... j2VarArr) {
        this.f17795a = j2VarArr;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7620j2
    /* renamed from: a */
    public final AbstractC7613i2 mo20092a(Class<?> cls) {
        AbstractC7620j2[] j2VarArr;
        for (AbstractC7620j2 j2Var : this.f17795a) {
            if (j2Var.mo20091b(cls)) {
                return j2Var.mo20092a(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7620j2
    /* renamed from: b */
    public final boolean mo20091b(Class<?> cls) {
        for (AbstractC7620j2 j2Var : this.f17795a) {
            if (j2Var.mo20091b(cls)) {
                return true;
            }
        }
        return false;
    }
}
