package p000;
/* renamed from: ef */
/* loaded from: classes-dex2jar.jar:ef.class */
public class C1359ef {

    /* renamed from: a */
    public final AbstractC1360b f6322a;

    /* renamed from: b */
    public final gf f6323b;

    /* renamed from: ef$b */
    /* loaded from: classes-dex2jar.jar:ef$b.class */
    public interface AbstractC1360b {
        /* renamed from: a */
        <T extends AbstractC1291df> T m2169a(Class<T> cls);
    }

    /* renamed from: ef$e */
    /* loaded from: classes-dex2jar.jar:ef$e.class */
    public static class C1361e {
        /* renamed from: b */
        public void m2168b(AbstractC1291df abstractC1291df) {
        }
    }

    public C1359ef(gf gfVar, AbstractC1360b abstractC1360b) {
        this.f6322a = abstractC1360b;
        this.f6323b = gfVar;
    }

    public C1359ef(hf hfVar) {
        this(hfVar.getViewModelStore(), hfVar instanceof le ? ((le) hfVar).getDefaultViewModelProviderFactory() : d.b());
    }

    /* renamed from: a */
    public <T extends AbstractC1291df> T m2171a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m2170b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* renamed from: b */
    public <T extends AbstractC1291df> T m2170b(String str, Class<T> cls) {
        T t = (T) this.f6323b.b(str);
        if (cls.isInstance(t)) {
            AbstractC1360b abstractC1360b = this.f6322a;
            if (abstractC1360b instanceof C1361e) {
                ((C1361e) abstractC1360b).m2168b(t);
            }
            return t;
        }
        c cVar = this.f6322a;
        AbstractC1291df c = cVar instanceof c ? cVar.c(str, cls) : cVar.m2169a(cls);
        this.f6323b.d(str, c);
        return (T) c;
    }
}
