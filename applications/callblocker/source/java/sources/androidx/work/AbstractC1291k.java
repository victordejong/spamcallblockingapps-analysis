package androidx.work;
/* renamed from: androidx.work.k */
/* loaded from: classes-dex2jar.jar:androidx/work/k.class */
public abstract class AbstractC1291k {
    /* renamed from: a */
    public static AbstractC1291k m17546a() {
        return new AbstractC1291k() { // from class: androidx.work.k.1
            @Override // androidx.work.AbstractC1291k
            /* renamed from: a */
            public AbstractC1290j mo17544a(String str) {
                return null;
            }
        };
    }

    /* renamed from: a */
    public abstract AbstractC1290j mo17544a(String str);

    /* renamed from: b */
    public final AbstractC1290j m17545b(String str) {
        AbstractC1290j mo17544a = mo17544a(str);
        AbstractC1290j abstractC1290j = mo17544a;
        if (mo17544a == null) {
            abstractC1290j = AbstractC1290j.m17548a(str);
        }
        return abstractC1290j;
    }
}
