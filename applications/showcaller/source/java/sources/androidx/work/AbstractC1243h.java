package androidx.work;

import java.util.List;
/* renamed from: androidx.work.h */
/* loaded from: classes-dex2jar.jar:androidx/work/h.class */
public abstract class AbstractC1243h {

    /* renamed from: a */
    private static final String f5303a = AbstractC1404j.m30159f("InputMerger");

    /* renamed from: a */
    public static AbstractC1243h m30538a(String str) {
        try {
            return (AbstractC1243h) Class.forName(str).newInstance();
        } catch (Exception e) {
            AbstractC1404j m30161c = AbstractC1404j.m30161c();
            String str2 = f5303a;
            m30161c.mo30157b(str2, "Trouble instantiating + " + str, e);
            return null;
        }
    }

    /* renamed from: b */
    public abstract C1238d mo30537b(List<C1238d> list);
}
