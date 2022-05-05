package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Comparator;
/* renamed from: h.i.a.e.j.l.m8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/m8.class */
public final class C8248m8 implements Comparator<AbstractC8209k8> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(AbstractC8209k8 k8Var, AbstractC8209k8 k8Var2) {
        int a;
        int a2;
        AbstractC8209k8 k8Var3 = k8Var;
        AbstractC8209k8 k8Var4 = k8Var2;
        AbstractC8301p8 p8Var = (AbstractC8301p8) k8Var3.iterator();
        AbstractC8301p8 p8Var2 = (AbstractC8301p8) k8Var4.iterator();
        while (p8Var.hasNext() && p8Var2.hasNext()) {
            a = AbstractC8209k8.m18381a(p8Var.nextByte());
            a2 = AbstractC8209k8.m18381a(p8Var2.nextByte());
            int compare = Integer.compare(a, a2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(k8Var3.size(), k8Var4.size());
    }
}
