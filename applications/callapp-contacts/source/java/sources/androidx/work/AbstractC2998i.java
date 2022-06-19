package androidx.work;

import java.util.List;
/* renamed from: androidx.work.i */
/* loaded from: classes-dex2jar.jar:androidx/work/i.class */
public abstract class AbstractC2998i {

    /* renamed from: a */
    private static final String f11156a = AbstractC3145k.m39275a("InputMerger");

    /* renamed from: a */
    public static AbstractC2998i m39493a(String str) {
        try {
            return (AbstractC2998i) Class.forName(str).newInstance();
        } catch (Exception e) {
            AbstractC3145k.m39277a().mo39273a(f11156a, "Trouble instantiating + ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    /* renamed from: a */
    public abstract C2992d mo39492a(List<C2992d> list);
}
