package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p175n1.AbstractC3712b;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {

    /* renamed from: a */
    public final C4251a<String, Method> f2611a;

    /* renamed from: b */
    public final C4251a<String, Method> f2612b;

    /* renamed from: c */
    public final C4251a<String, Class> f2613c;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
    }

    public VersionedParcel(C4251a<String, Method> c4251a, C4251a<String, Method> c4251a2, C4251a<String, Class> c4251a3) {
        this.f2611a = c4251a;
        this.f2612b = c4251a2;
        this.f2613c = c4251a3;
    }

    /* renamed from: a */
    public abstract void mo1863a();

    /* renamed from: b */
    public abstract VersionedParcel mo1862b();

    /* renamed from: c */
    public final Class m7496c(Class<? extends AbstractC3712b> cls) throws ClassNotFoundException {
        Class<?> orDefault = this.f2613c.getOrDefault(cls.getName(), null);
        Class<?> cls2 = orDefault;
        if (orDefault == null) {
            cls2 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f2613c.put(cls.getName(), cls2);
        }
        return cls2;
    }

    /* renamed from: d */
    public final Method m7495d(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method orDefault = this.f2611a.getOrDefault(str, null);
        Method method = orDefault;
        if (orDefault == null) {
            System.currentTimeMillis();
            method = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.f2611a.put(str, method);
        }
        return method;
    }

    /* renamed from: e */
    public final Method m7494e(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method orDefault = this.f2612b.getOrDefault(cls.getName(), null);
        Method method = orDefault;
        if (orDefault == null) {
            Class m7496c = m7496c(cls);
            System.currentTimeMillis();
            method = m7496c.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f2612b.put(cls.getName(), method);
        }
        return method;
    }

    /* renamed from: f */
    public abstract boolean mo1861f();

    /* renamed from: g */
    public abstract byte[] mo1860g();

    /* renamed from: h */
    public abstract CharSequence mo1859h();

    /* renamed from: i */
    public abstract boolean mo1858i(int i);

    /* renamed from: j */
    public abstract int mo1857j();

    /* renamed from: k */
    public int m7493k(int i, int i2) {
        return !mo1858i(i2) ? i : mo1857j();
    }

    /* renamed from: l */
    public abstract <T extends Parcelable> T mo1856l();

    /* renamed from: m */
    public <T extends Parcelable> T m7492m(T t, int i) {
        return !mo1858i(i) ? t : (T) mo1856l();
    }

    /* renamed from: n */
    public abstract String mo1855n();

    /* renamed from: o */
    public <T extends AbstractC3712b> T m7491o() {
        String mo1855n = mo1855n();
        if (mo1855n == null) {
            return null;
        }
        try {
            return (T) m7495d(mo1855n).invoke(null, mo1862b());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (!(e4.getCause() instanceof RuntimeException)) {
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
            }
            throw ((RuntimeException) e4.getCause());
        }
    }

    /* renamed from: p */
    public abstract void mo1854p(int i);

    /* renamed from: q */
    public abstract void mo1853q(boolean z);

    /* renamed from: r */
    public abstract void mo1852r(byte[] bArr);

    /* renamed from: s */
    public abstract void mo1851s(CharSequence charSequence);

    /* renamed from: t */
    public abstract void mo1850t(int i);

    /* renamed from: u */
    public abstract void mo1849u(Parcelable parcelable);

    /* renamed from: v */
    public abstract void mo1848v(String str);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: w */
    public void m7490w(AbstractC3712b abstractC3712b) {
        if (abstractC3712b == null) {
            mo1848v(null);
            return;
        }
        try {
            mo1848v(m7496c(abstractC3712b.getClass()).getName());
            VersionedParcel mo1862b = mo1862b();
            try {
                m7494e(abstractC3712b.getClass()).invoke(null, abstractC3712b, mo1862b);
                mo1862b.mo1863a();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (!(e4.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
                }
                throw ((RuntimeException) e4.getCause());
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(abstractC3712b.getClass().getSimpleName() + " does not have a Parcelizer", e5);
        }
    }
}
