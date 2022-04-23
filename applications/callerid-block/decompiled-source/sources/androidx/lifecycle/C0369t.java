package androidx.lifecycle;
/* renamed from: androidx.lifecycle.t */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/t.class */
public class C0369t {

    /* renamed from: a */
    private final AbstractC0370a f2072a;

    /* renamed from: b */
    private final C0372u f2073b;

    /* renamed from: androidx.lifecycle.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/t$a.class */
    public interface AbstractC0370a {
        /* renamed from: a */
        <T extends AbstractC0368s> T m12960a(Class<T> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.t$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/t$c.class */
    public static class C0371c {
        C0371c() {
        }

        /* renamed from: b */
        void m12959b(AbstractC0368s sVar) {
        }
    }

    public C0369t(C0372u uVar, AbstractC0370a aVar) {
        this.f2072a = aVar;
        this.f2073b = uVar;
    }

    /* renamed from: a */
    public <T extends AbstractC0368s> T m12962a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m12961b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* renamed from: b */
    public <T extends AbstractC0368s> T m12961b(String str, Class<T> cls) {
        T t = (T) this.f2073b.m12957b(str);
        if (cls.isInstance(t)) {
            AbstractC0370a aVar = this.f2072a;
            if (aVar instanceof C0371c) {
                ((C0371c) aVar).m12959b(t);
            }
            return t;
        }
        b bVar = this.f2072a;
        T t2 = bVar instanceof b ? (T) bVar.c(str, cls) : (T) bVar.m12960a(cls);
        this.f2073b.m12955d(str, t2);
        return t2;
    }
}
