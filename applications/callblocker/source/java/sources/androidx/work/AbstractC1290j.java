package androidx.work;

import java.util.List;
/* renamed from: androidx.work.j */
/* loaded from: classes-dex2jar.jar:androidx/work/j.class */
public abstract class AbstractC1290j {

    /* renamed from: a */
    private static final String f4328a = AbstractC1293l.m17541a("InputMerger");

    /* renamed from: a */
    public static AbstractC1290j m17548a(String str) {
        AbstractC1290j abstractC1290j;
        try {
            abstractC1290j = (AbstractC1290j) Class.forName(str).newInstance();
        } catch (Exception e) {
            AbstractC1293l.m17543a().mo17536e(f4328a, "Trouble instantiating + " + str, e);
            abstractC1290j = null;
        }
        return abstractC1290j;
    }

    /* renamed from: a */
    public abstract C1133e mo17547a(List<C1133e> list);
}
