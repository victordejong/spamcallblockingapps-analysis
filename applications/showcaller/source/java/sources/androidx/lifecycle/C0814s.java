package androidx.lifecycle;
/* renamed from: androidx.lifecycle.s */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/s.class */
public class C0814s {

    /* renamed from: a */
    private final AbstractC0815a f3735a;

    /* renamed from: b */
    private final C0818t f3736b;

    /* renamed from: androidx.lifecycle.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/s$a.class */
    public interface AbstractC0815a {
        /* renamed from: a */
        <T extends AbstractC0813r> T mo28941a(Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.s$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/s$b.class */
    public static abstract class AbstractC0816b extends C0817c implements AbstractC0815a {
        AbstractC0816b() {
        }

        @Override // androidx.lifecycle.C0814s.AbstractC0815a
        /* renamed from: a */
        public <T extends AbstractC0813r> T mo28941a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        /* renamed from: c */
        public abstract <T extends AbstractC0813r> T m32350c(String str, Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.s$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/s$c.class */
    public static class C0817c {
        C0817c() {
        }

        /* renamed from: b */
        void m32349b(AbstractC0813r abstractC0813r) {
        }
    }

    public C0814s(C0818t c0818t, AbstractC0815a abstractC0815a) {
        this.f3735a = abstractC0815a;
        this.f3736b = c0818t;
    }

    /* renamed from: a */
    public <T extends AbstractC0813r> T m32352a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m32351b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* renamed from: b */
    public <T extends AbstractC0813r> T m32351b(String str, Class<T> cls) {
        T t = (T) this.f3736b.m32347b(str);
        if (cls.isInstance(t)) {
            AbstractC0815a abstractC0815a = this.f3735a;
            if (abstractC0815a instanceof C0817c) {
                ((C0817c) abstractC0815a).m32349b(t);
            }
            return t;
        }
        AbstractC0815a abstractC0815a2 = this.f3735a;
        AbstractC0813r m32350c = abstractC0815a2 instanceof AbstractC0816b ? ((AbstractC0816b) abstractC0815a2).m32350c(str, cls) : abstractC0815a2.mo28941a(cls);
        this.f3736b.m32345d(str, m32350c);
        return (T) m32350c;
    }
}
