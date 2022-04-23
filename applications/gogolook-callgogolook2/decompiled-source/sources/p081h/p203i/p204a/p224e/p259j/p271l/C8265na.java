package p081h.p203i.p204a.p224e.p259j.p271l;
/* renamed from: h.i.a.e.j.l.na */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/na.class */
public final class C8265na implements AbstractC8410va {

    /* renamed from: a */
    public AbstractC8410va[] f19102a;

    public C8265na(AbstractC8410va... vaVarArr) {
        this.f19102a = vaVarArr;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8410va
    /* renamed from: a */
    public final boolean mo18114a(Class<?> cls) {
        for (AbstractC8410va vaVar : this.f19102a) {
            if (vaVar.mo18114a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8410va
    /* renamed from: b */
    public final AbstractC8354sa mo18113b(Class<?> cls) {
        AbstractC8410va[] vaVarArr;
        for (AbstractC8410va vaVar : this.f19102a) {
            if (vaVar.mo18114a(cls)) {
                return vaVar.mo18113b(cls);
            }
        }
        String valueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(valueOf.length() != 0 ? "No factory is available for message type: ".concat(valueOf) : new String("No factory is available for message type: "));
    }
}
