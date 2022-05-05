package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Comparator;
/* renamed from: h.i.a.e.j.j.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/g0.class */
public final class C7808g0 implements Comparator<AbstractC7791e0> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(AbstractC7791e0 e0Var, AbstractC7791e0 e0Var2) {
        int a;
        int a2;
        AbstractC7791e0 e0Var3 = e0Var;
        AbstractC7791e0 e0Var4 = e0Var2;
        AbstractC7846k0 k0Var = (AbstractC7846k0) e0Var3.iterator();
        AbstractC7846k0 k0Var2 = (AbstractC7846k0) e0Var4.iterator();
        while (k0Var.hasNext() && k0Var2.hasNext()) {
            a = AbstractC7791e0.m19477a(k0Var.nextByte());
            a2 = AbstractC7791e0.m19477a(k0Var2.nextByte());
            int compare = Integer.compare(a, a2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(e0Var3.size(), e0Var4.size());
    }
}
