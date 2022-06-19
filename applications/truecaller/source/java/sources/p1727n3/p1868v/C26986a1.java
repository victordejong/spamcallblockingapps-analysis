package p1727n3.p1868v;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.v.a1 */
/* loaded from: classes-dex2jar.jar:n3/v/a1.class */
public class C26986a1 {

    /* renamed from: a */
    public final AbstractC26987b f75496a;

    /* renamed from: b */
    public final C26993b1 f75497b;

    /* renamed from: n3.v.a1$b */
    /* loaded from: classes-dex2jar.jar:n3/v/a1$b.class */
    public interface AbstractC26987b {
        <T extends AbstractC27040y0> T create(Class<T> cls);
    }

    /* renamed from: n3.v.a1$c */
    /* loaded from: classes-dex2jar.jar:n3/v/a1$c.class */
    public static abstract class AbstractC26988c extends C26990e implements AbstractC26987b {
        /* renamed from: b */
        public abstract <T extends AbstractC27040y0> T m1024b(String str, Class<T> cls);

        @Override // p1727n3.p1868v.C26986a1.AbstractC26987b
        public <T extends AbstractC27040y0> T create(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }
    }

    /* renamed from: n3.v.a1$d */
    /* loaded from: classes-dex2jar.jar:n3/v/a1$d.class */
    public static class C26989d implements AbstractC26987b {

        /* renamed from: a */
        public static C26989d f75498a;

        @Override // p1727n3.p1868v.C26986a1.AbstractC26987b
        public <T extends AbstractC27040y0> T create(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException(C22128a.m8555w2("Cannot create an instance of ", cls), e);
            } catch (InstantiationException e2) {
                throw new RuntimeException(C22128a.m8555w2("Cannot create an instance of ", cls), e2);
            }
        }
    }

    /* renamed from: n3.v.a1$e */
    /* loaded from: classes-dex2jar.jar:n3/v/a1$e.class */
    public static class C26990e {
        /* renamed from: a */
        public void m1023a(AbstractC27040y0 abstractC27040y0) {
        }
    }

    public C26986a1(C26993b1 c26993b1, AbstractC26987b abstractC26987b) {
        this.f75496a = abstractC26987b;
        this.f75497b = c26993b1;
    }

    /* renamed from: a */
    public <T extends AbstractC27040y0> T m1025a(Class<T> cls) {
        AbstractC27040y0 abstractC27040y0;
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            AbstractC27040y0 abstractC27040y02 = this.f75497b.f75499a.get(m8543z2);
            if (cls.isInstance(abstractC27040y02)) {
                AbstractC26987b abstractC26987b = this.f75496a;
                abstractC27040y0 = abstractC27040y02;
                if (abstractC26987b instanceof C26990e) {
                    ((C26990e) abstractC26987b).m1023a(abstractC27040y02);
                    abstractC27040y0 = abstractC27040y02;
                }
            } else {
                AbstractC26987b abstractC26987b2 = this.f75496a;
                AbstractC27040y0 m1024b = abstractC26987b2 instanceof AbstractC26988c ? ((AbstractC26988c) abstractC26987b2).m1024b(m8543z2, cls) : abstractC26987b2.create(cls);
                AbstractC27040y0 put = this.f75497b.f75499a.put(m8543z2, m1024b);
                abstractC27040y0 = m1024b;
                if (put != null) {
                    put.onCleared();
                    abstractC27040y0 = m1024b;
                }
            }
            return (T) abstractC27040y0;
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
