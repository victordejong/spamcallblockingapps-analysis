package androidx.work;
/* renamed from: androidx.work.i */
/* loaded from: classes-dex2jar.jar:androidx/work/i.class */
public abstract class AbstractC1244i {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/i$a.class */
    public class C1245a extends AbstractC1244i {
        C1245a() {
        }

        @Override // androidx.work.AbstractC1244i
        /* renamed from: a */
        public AbstractC1243h mo30534a(String str) {
            return null;
        }
    }

    /* renamed from: c */
    public static AbstractC1244i m30535c() {
        return new C1245a();
    }

    /* renamed from: a */
    public abstract AbstractC1243h mo30534a(String str);

    /* renamed from: b */
    public final AbstractC1243h m30536b(String str) {
        AbstractC1243h mo30534a = mo30534a(str);
        AbstractC1243h abstractC1243h = mo30534a;
        if (mo30534a == null) {
            abstractC1243h = AbstractC1243h.m30538a(str);
        }
        return abstractC1243h;
    }
}
