package androidx.work;

import java.util.List;
/* renamed from: androidx.work.e */
/* loaded from: classes-dex2jar.jar:androidx/work/e.class */
public abstract class AbstractC0554e {

    /* renamed from: a */
    private static final String f2986a = AbstractC0555f.m11738f("InputMerger");

    /* renamed from: a */
    public static AbstractC0554e m11745a(String str) {
        try {
            return (AbstractC0554e) Class.forName(str).newInstance();
        } catch (Exception e) {
            AbstractC0555f m11741c = AbstractC0555f.m11741c();
            String str2 = f2986a;
            m11741c.m11742b(str2, "Trouble instantiating + " + str, e);
            return null;
        }
    }

    /* renamed from: b */
    public abstract C0552d m11744b(List<C0552d> list);
}
