package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.p013b.C0373a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {

    /* renamed from: a */
    protected final C0373a<String, Method> f3698a;

    /* renamed from: b */
    protected final C0373a<String, Method> f3699b;

    /* renamed from: c */
    protected final C0373a<String, Class> f3700c;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
    }

    public VersionedParcel(C0373a<String, Method> c0373a, C0373a<String, Method> c0373a2, C0373a<String, Class> c0373a3) {
        this.f3698a = c0373a;
        this.f3699b = c0373a2;
        this.f3700c = c0373a3;
    }

    /* renamed from: a */
    private Method m18148a(Class cls) {
        Method method = this.f3699b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class m18137b = m18137b(cls);
            System.currentTimeMillis();
            method2 = m18137b.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f3699b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: b */
    private Class m18137b(Class<? extends AbstractC1083c> cls) {
        Class<?> cls2 = this.f3700c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f3700c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* renamed from: b */
    private Method m18136b(String str) {
        Method method = this.f3698a.get(str);
        Method method2 = method;
        if (method == null) {
            System.currentTimeMillis();
            method2 = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.f3698a.put(str, method2);
        }
        return method2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m18140b(AbstractC1083c abstractC1083c) {
        try {
            mo18126a(m18137b((Class<? extends AbstractC1083c>) abstractC1083c.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(abstractC1083c.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: a */
    protected <T extends AbstractC1083c> T m18146a(String str, VersionedParcel versionedParcel) {
        try {
            return (T) m18136b(str).invoke(null, versionedParcel);
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

    /* renamed from: a */
    protected abstract void mo18129a(int i);

    /* renamed from: a */
    public void m18154a(int i, int i2) {
        mo18120c(i2);
        mo18129a(i);
    }

    /* renamed from: a */
    protected abstract void mo18128a(Parcelable parcelable);

    /* renamed from: a */
    public void m18153a(Parcelable parcelable, int i) {
        mo18120c(i);
        mo18128a(parcelable);
    }

    /* renamed from: a */
    public void m18152a(AbstractC1083c abstractC1083c) {
        if (abstractC1083c == null) {
            mo18126a((String) null);
            return;
        }
        m18140b(abstractC1083c);
        VersionedParcel mo18121c = mo18121c();
        m18150a((VersionedParcel) abstractC1083c, mo18121c);
        mo18121c.mo18123b();
    }

    /* renamed from: a */
    public void m18151a(AbstractC1083c abstractC1083c, int i) {
        mo18120c(i);
        m18152a(abstractC1083c);
    }

    /* renamed from: a */
    protected <T extends AbstractC1083c> void m18150a(T t, VersionedParcel versionedParcel) {
        try {
            m18148a(t.getClass()).invoke(null, t, versionedParcel);
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

    /* renamed from: a */
    protected abstract void mo18127a(CharSequence charSequence);

    /* renamed from: a */
    public void m18149a(CharSequence charSequence, int i) {
        mo18120c(i);
        mo18127a(charSequence);
    }

    /* renamed from: a */
    protected abstract void mo18126a(String str);

    /* renamed from: a */
    public void m18147a(String str, int i) {
        mo18120c(i);
        mo18126a(str);
    }

    /* renamed from: a */
    protected abstract void mo18125a(boolean z);

    /* renamed from: a */
    public void m18145a(boolean z, int i) {
        mo18120c(i);
        mo18125a(z);
    }

    /* renamed from: a */
    public void m18144a(boolean z, boolean z2) {
    }

    /* renamed from: a */
    protected abstract void mo18124a(byte[] bArr);

    /* renamed from: a */
    public void m18143a(byte[] bArr, int i) {
        mo18120c(i);
        mo18124a(bArr);
    }

    /* renamed from: a */
    public boolean m18155a() {
        return false;
    }

    /* renamed from: b */
    public int m18142b(int i, int i2) {
        if (mo18122b(i2)) {
            i = mo18119d();
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.Parcelable] */
    /* renamed from: b */
    public <T extends Parcelable> T m18141b(T t, int i) {
        if (mo18122b(i)) {
            t = mo18115h();
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.versionedparcelable.c] */
    /* renamed from: b */
    public <T extends AbstractC1083c> T m18139b(T t, int i) {
        if (mo18122b(i)) {
            t = m18132j();
        }
        return t;
    }

    /* renamed from: b */
    public CharSequence m18138b(CharSequence charSequence, int i) {
        if (mo18122b(i)) {
            charSequence = mo18116g();
        }
        return charSequence;
    }

    /* renamed from: b */
    public String m18135b(String str, int i) {
        if (mo18122b(i)) {
            str = mo18118e();
        }
        return str;
    }

    /* renamed from: b */
    protected abstract void mo18123b();

    /* renamed from: b */
    protected abstract boolean mo18122b(int i);

    /* renamed from: b */
    public boolean m18134b(boolean z, int i) {
        if (mo18122b(i)) {
            z = mo18114i();
        }
        return z;
    }

    /* renamed from: b */
    public byte[] m18133b(byte[] bArr, int i) {
        if (mo18122b(i)) {
            bArr = mo18117f();
        }
        return bArr;
    }

    /* renamed from: c */
    protected abstract VersionedParcel mo18121c();

    /* renamed from: c */
    protected abstract void mo18120c(int i);

    /* renamed from: d */
    protected abstract int mo18119d();

    /* renamed from: e */
    protected abstract String mo18118e();

    /* renamed from: f */
    protected abstract byte[] mo18117f();

    /* renamed from: g */
    protected abstract CharSequence mo18116g();

    /* renamed from: h */
    protected abstract <T extends Parcelable> T mo18115h();

    /* renamed from: i */
    protected abstract boolean mo18114i();

    /* renamed from: j */
    public <T extends AbstractC1083c> T m18132j() {
        String mo18118e = mo18118e();
        return (T) (mo18118e == null ? null : m18146a(mo18118e, mo18121c()));
    }
}
