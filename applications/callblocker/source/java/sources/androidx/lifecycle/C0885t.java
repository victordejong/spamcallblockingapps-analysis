package androidx.lifecycle;
/* renamed from: androidx.lifecycle.t */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/t.class */
public class C0885t {

    /* renamed from: a */
    private final AbstractC0886a f3005a;

    /* renamed from: b */
    private final C0888u f3006b;

    /* renamed from: androidx.lifecycle.t$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/t$a.class */
    public interface AbstractC0886a {
        /* renamed from: a */
        <T extends AbstractC0884s> T mo19172a(Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.t$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/t$b.class */
    public static abstract class AbstractC0887b implements AbstractC0886a {
        AbstractC0887b() {
        }

        /* renamed from: a */
        public abstract <T extends AbstractC0884s> T m19171a(String str, Class<T> cls);
    }

    public C0885t(C0888u c0888u, AbstractC0886a abstractC0886a) {
        this.f3005a = abstractC0886a;
        this.f3006b = c0888u;
    }

    /* renamed from: a */
    public <T extends AbstractC0884s> T m19174a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) m19173a("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    /* renamed from: a */
    public <T extends AbstractC0884s> T m19173a(String str, Class<T> cls) {
        AbstractC0884s m19171a;
        AbstractC0884s m19169a = this.f3006b.m19169a(str);
        if (cls.isInstance(m19169a)) {
            m19171a = m19169a;
        } else {
            if (m19169a != null) {
            }
            m19171a = this.f3005a instanceof AbstractC0887b ? ((AbstractC0887b) this.f3005a).m19171a(str, cls) : this.f3005a.mo19172a(cls);
            this.f3006b.m19168a(str, m19171a);
        }
        return (T) m19171a;
    }
}
