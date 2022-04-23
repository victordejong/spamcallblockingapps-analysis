package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab.class */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    private final b f2561a;

    /* renamed from: b  reason: collision with root package name */
    private final ac f2562b;

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$a.class */
    public static final class a extends d {

        /* renamed from: a  reason: collision with root package name */
        static a f2563a;

        /* renamed from: b  reason: collision with root package name */
        private Application f2564b;

        public a(Application application) {
            this.f2564b = application;
        }

        @Override // androidx.lifecycle.ab.d, androidx.lifecycle.ab.b
        public final <T extends aa> T a(Class<T> cls) {
            if (!androidx.lifecycle.a.class.isAssignableFrom(cls)) {
                return (T) super.a(cls);
            }
            try {
                return cls.getConstructor(Application.class).newInstance(this.f2564b);
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
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$b.class */
    public interface b {
        <T extends aa> T a(Class<T> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$c.class */
    public static abstract class c extends e implements b {
        @Override // androidx.lifecycle.ab.b
        public <T extends aa> T a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        public abstract <T extends aa> T a(String str, Class<T> cls);
    }

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$d.class */
    public static class d implements b {

        /* renamed from: a  reason: collision with root package name */
        private static d f2565a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public static d a() {
            if (f2565a == null) {
                f2565a = new d();
            }
            return f2565a;
        }

        @Override // androidx.lifecycle.ab.b
        public <T extends aa> T a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of ".concat(String.valueOf(cls)), e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of ".concat(String.valueOf(cls)), e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/ab$e.class */
    public static class e {
        e() {
        }

        void a(aa aaVar) {
        }
    }

    public ab(ac acVar, b bVar) {
        this.f2561a = bVar;
        this.f2562b = acVar;
    }

    public ab(ad adVar) {
        this(adVar.getViewModelStore(), adVar instanceof i ? ((i) adVar).getDefaultViewModelProviderFactory() : d.a());
    }

    public ab(ad adVar, b bVar) {
        this(adVar.getViewModelStore(), bVar);
    }

    private <T extends aa> T a(String str, Class<T> cls) {
        T t = (T) this.f2562b.a(str);
        if (cls.isInstance(t)) {
            b bVar = this.f2561a;
            if (bVar instanceof e) {
                ((e) bVar).a(t);
            }
            return t;
        }
        b bVar2 = this.f2561a;
        T t2 = bVar2 instanceof c ? (T) ((c) bVar2).a(str, cls) : (T) bVar2.a(cls);
        this.f2562b.a(str, t2);
        return t2;
    }

    public final <T extends aa> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) a("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(String.valueOf(canonicalName)), cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
