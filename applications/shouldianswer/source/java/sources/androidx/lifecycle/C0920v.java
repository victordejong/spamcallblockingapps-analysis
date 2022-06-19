package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
/* renamed from: androidx.lifecycle.v */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/v.class */
public class C0920v {

    /* renamed from: a */
    private final AbstractC0922b f2878a;

    /* renamed from: b */
    private final C0926x f2879b;

    /* renamed from: androidx.lifecycle.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/v$a.class */
    public static class C0921a extends C0924d {

        /* renamed from: a */
        private static C0921a f2880a;

        /* renamed from: b */
        private Application f2881b;

        public C0921a(Application application) {
            this.f2881b = application;
        }

        /* renamed from: a */
        public static C0921a m5059a(Application application) {
            if (f2880a == null) {
                f2880a = new C0921a(application);
            }
            return f2880a;
        }

        @Override // androidx.lifecycle.C0920v.C0924d, androidx.lifecycle.C0920v.AbstractC0922b
        /* renamed from: a */
        public <T extends AbstractC0919u> T mo5057a(Class<T> cls) {
            if (C0888a.class.isAssignableFrom(cls)) {
                try {
                    return cls.getConstructor(Application.class).newInstance(this.f2881b);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e2);
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e3);
                } catch (InvocationTargetException e4) {
                    throw new RuntimeException("Cannot create an instance of " + cls, e4);
                }
            }
            return (T) super.mo5057a(cls);
        }
    }

    /* renamed from: androidx.lifecycle.v$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/v$b.class */
    public interface AbstractC0922b {
        /* renamed from: a */
        <T extends AbstractC0919u> T mo5057a(Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.v$c */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/v$c.class */
    public static abstract class AbstractC0923c implements AbstractC0922b {
        AbstractC0923c() {
        }

        /* renamed from: a */
        public abstract <T extends AbstractC0919u> T m5058a(String str, Class<T> cls);
    }

    /* renamed from: androidx.lifecycle.v$d */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/v$d.class */
    public static class C0924d implements AbstractC0922b {
        @Override // androidx.lifecycle.C0920v.AbstractC0922b
        /* renamed from: a */
        public <T extends AbstractC0919u> T mo5057a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            }
        }
    }

    public C0920v(C0926x c0926x, AbstractC0922b abstractC0922b) {
        this.f2878a = abstractC0922b;
        this.f2879b = c0926x;
    }

    /* renamed from: a */
    public <T extends AbstractC0919u> T m5061a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) m5060a("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    /* renamed from: a */
    public <T extends AbstractC0919u> T m5060a(String str, Class<T> cls) {
        T t = (T) this.f2879b.m5049a(str);
        if (cls.isInstance(t)) {
            return t;
        }
        AbstractC0922b abstractC0922b = this.f2878a;
        AbstractC0919u m5058a = abstractC0922b instanceof AbstractC0923c ? ((AbstractC0923c) abstractC0922b).m5058a(str, cls) : abstractC0922b.mo5057a(cls);
        this.f2879b.m5048a(str, m5058a);
        return (T) m5058a;
    }
}
