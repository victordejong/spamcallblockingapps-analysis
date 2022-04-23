package p012b.p068o;
/* renamed from: b.o.q */
/* loaded from: classes-dex2jar.jar:b/o/q.class */
public class C1122q {

    /* renamed from: a */
    public final AbstractC1123a f4624a;

    /* renamed from: b */
    public final C1125r f4625b;

    /* renamed from: b.o.q$a */
    /* loaded from: classes-dex2jar.jar:b/o/q$a.class */
    public interface AbstractC1123a {
        /* renamed from: a */
        <T extends AbstractC1121p> T mo34607a(Class<T> cls);
    }

    /* renamed from: b.o.q$b */
    /* loaded from: classes-dex2jar.jar:b/o/q$b.class */
    public static abstract class AbstractC1124b implements AbstractC1123a {
        @Override // p012b.p068o.C1122q.AbstractC1123a
        /* renamed from: a */
        public <T extends AbstractC1121p> T mo34607a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        /* renamed from: a */
        public abstract <T extends AbstractC1121p> T m34626a(String str, Class<T> cls);
    }

    public C1122q(C1125r rVar, AbstractC1123a aVar) {
        this.f4624a = aVar;
        this.f4625b = rVar;
    }

    /* renamed from: a */
    public <T extends AbstractC1121p> T m34628a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m34627a("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* renamed from: a */
    public <T extends AbstractC1121p> T m34627a(String str, Class<T> cls) {
        T t = (T) this.f4625b.m34624a(str);
        if (cls.isInstance(t)) {
            return t;
        }
        AbstractC1123a aVar = this.f4624a;
        T t2 = aVar instanceof AbstractC1124b ? (T) ((AbstractC1124b) aVar).m34626a(str, cls) : (T) aVar.mo34607a(cls);
        this.f4625b.m34623a(str, t2);
        return t2;
    }
}
