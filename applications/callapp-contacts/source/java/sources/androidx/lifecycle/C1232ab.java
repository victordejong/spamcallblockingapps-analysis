package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
/* renamed from: androidx.lifecycle.ab */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab.class */
public final class C1232ab {

    /* renamed from: a */
    private final AbstractC1234b f4814a;

    /* renamed from: b */
    private final C1238ac f4815b;

    /* renamed from: androidx.lifecycle.ab$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$a.class */
    public static final class C1233a extends C1236d {

        /* renamed from: a */
        static C1233a f4816a;

        /* renamed from: b */
        private Application f4817b;

        public C1233a(Application application) {
            this.f4817b = application;
        }

        @Override // androidx.lifecycle.C1232ab.C1236d, androidx.lifecycle.C1232ab.AbstractC1234b
        /* renamed from: a */
        public final <T extends AbstractC1231aa> T mo43274a(Class<T> cls) {
            if (C1228a.class.isAssignableFrom(cls)) {
                try {
                    return cls.getConstructor(Application.class).newInstance(this.f4817b);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException("Cannot create an instance of ".concat(String.valueOf(cls)), e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Cannot create an instance of ".concat(String.valueOf(cls)), e2);
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException("Cannot create an instance of ".concat(String.valueOf(cls)), e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException("Cannot create an instance of ".concat(String.valueOf(cls)), e4);
                }
            }
            return (T) super.mo43274a(cls);
        }
    }

    /* renamed from: androidx.lifecycle.ab$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$b.class */
    public interface AbstractC1234b {
        /* renamed from: a */
        <T extends AbstractC1231aa> T mo43274a(Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.ab$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$c.class */
    public static abstract class AbstractC1235c extends C1237e implements AbstractC1234b {
        @Override // androidx.lifecycle.C1232ab.AbstractC1234b
        /* renamed from: a */
        public <T extends AbstractC1231aa> T mo43274a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        /* renamed from: a */
        public abstract <T extends AbstractC1231aa> T mo43272a(String str, Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.ab$d */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$d.class */
    public static class C1236d implements AbstractC1234b {

        /* renamed from: a */
        private static C1236d f4818a;

        /* renamed from: a */
        public static C1236d m43310a() {
            if (f4818a == null) {
                f4818a = new C1236d();
            }
            return f4818a;
        }

        @Override // androidx.lifecycle.C1232ab.AbstractC1234b
        /* renamed from: a */
        public <T extends AbstractC1231aa> T mo43274a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of ".concat(String.valueOf(cls)), e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of ".concat(String.valueOf(cls)), e2);
            }
        }
    }

    /* renamed from: androidx.lifecycle.ab$e */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$e.class */
    public static class C1237e {
        C1237e() {
        }

        /* renamed from: a */
        void mo43275a(AbstractC1231aa abstractC1231aa) {
        }
    }

    public C1232ab(C1238ac c1238ac, AbstractC1234b abstractC1234b) {
        this.f4814a = abstractC1234b;
        this.f4815b = c1238ac;
    }

    public C1232ab(AbstractC1239ad abstractC1239ad) {
        this(abstractC1239ad.getViewModelStore(), abstractC1239ad instanceof AbstractC1252i ? ((AbstractC1252i) abstractC1239ad).getDefaultViewModelProviderFactory() : C1236d.m43310a());
    }

    public C1232ab(AbstractC1239ad abstractC1239ad, AbstractC1234b abstractC1234b) {
        this(abstractC1239ad.getViewModelStore(), abstractC1234b);
    }

    /* renamed from: a */
    private <T extends AbstractC1231aa> T m43311a(String str, Class<T> cls) {
        T t = (T) this.f4815b.m43308a(str);
        if (cls.isInstance(t)) {
            AbstractC1234b abstractC1234b = this.f4814a;
            if (abstractC1234b instanceof C1237e) {
                ((C1237e) abstractC1234b).mo43275a(t);
            }
            return t;
        }
        AbstractC1234b abstractC1234b2 = this.f4814a;
        AbstractC1231aa mo43272a = abstractC1234b2 instanceof AbstractC1235c ? ((AbstractC1235c) abstractC1234b2).mo43272a(str, cls) : abstractC1234b2.mo43274a(cls);
        this.f4815b.m43307a(str, mo43272a);
        return (T) mo43272a;
    }

    /* renamed from: a */
    public final <T extends AbstractC1231aa> T m43312a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m43311a("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(String.valueOf(canonicalName)), cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
