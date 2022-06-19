package p193e.p194a.p1272u3;

import java.util.Comparator;
import s1.z.c.l;
/* renamed from: e.a.u3.c */
/* loaded from: classes9-dex2jar.jar:e/a/u3/c.class */
public final class C20584c implements Comparator<AbstractC20583b> {
    @Override // java.util.Comparator
    public int compare(AbstractC20583b abstractC20583b, AbstractC20583b abstractC20583b2) {
        int i;
        AbstractC20583b abstractC20583b3 = abstractC20583b;
        AbstractC20583b abstractC20583b4 = abstractC20583b2;
        l.e(abstractC20583b3, "feature1");
        l.e(abstractC20583b4, "feature2");
        if (l.a(abstractC20583b3.getClass(), abstractC20583b4.getClass())) {
            i = (!(abstractC20583b3 instanceof AbstractC20597i) || !(abstractC20583b4 instanceof AbstractC20597i)) ? abstractC20583b3.getDescription().compareTo(abstractC20583b4.getDescription()) : ((AbstractC20597i) abstractC20583b3).mo10936j().toString().compareTo(((AbstractC20597i) abstractC20583b4).mo10936j().toString());
        } else {
            String simpleName = abstractC20583b4.getClass().getSimpleName();
            String simpleName2 = abstractC20583b3.getClass().getSimpleName();
            l.d(simpleName2, "feature1.javaClass.simpleName");
            i = simpleName.compareTo(simpleName2);
        }
        return i;
    }
}
