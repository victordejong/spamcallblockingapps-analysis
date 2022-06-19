package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p020b.p036e.C1489a;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {

    /* renamed from: a */
    protected final C1489a<String, Method> f5003a;

    /* renamed from: b */
    protected final C1489a<String, Method> f5004b;

    /* renamed from: c */
    protected final C1489a<String, Class> f5005c;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    public VersionedParcel(C1489a<String, Method> c1489a, C1489a<String, Method> c1489a2, C1489a<String, Class> c1489a3) {
        this.f5003a = c1489a;
        this.f5004b = c1489a2;
        this.f5005c = c1489a3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: N */
    private void m30803N(AbstractC1179b abstractC1179b) {
        try {
            mo30783I(m30802c(abstractC1179b.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(abstractC1179b.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: c */
    private Class m30802c(Class<? extends AbstractC1179b> cls) {
        Class<?> cls2 = this.f5005c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f5005c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* renamed from: d */
    private Method m30801d(String str) {
        Method method = this.f5003a.get(str);
        Method method2 = method;
        if (method == null) {
            System.currentTimeMillis();
            method2 = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.f5003a.put(str, method2);
        }
        return method2;
    }

    /* renamed from: e */
    private Method m30800e(Class cls) {
        Method method = this.f5004b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class m30802c = m30802c(cls);
            System.currentTimeMillis();
            method2 = m30802c.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f5004b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: A */
    protected abstract void mo30787A(byte[] bArr);

    /* renamed from: B */
    public void m30811B(byte[] bArr, int i) {
        mo30773w(i);
        mo30787A(bArr);
    }

    /* renamed from: C */
    protected abstract void mo30786C(CharSequence charSequence);

    /* renamed from: D */
    public void m30810D(CharSequence charSequence, int i) {
        mo30773w(i);
        mo30786C(charSequence);
    }

    /* renamed from: E */
    protected abstract void mo30785E(int i);

    /* renamed from: F */
    public void m30809F(int i, int i2) {
        mo30773w(i2);
        mo30785E(i);
    }

    /* renamed from: G */
    protected abstract void mo30784G(Parcelable parcelable);

    /* renamed from: H */
    public void m30808H(Parcelable parcelable, int i) {
        mo30773w(i);
        mo30784G(parcelable);
    }

    /* renamed from: I */
    protected abstract void mo30783I(String str);

    /* renamed from: J */
    public void m30807J(String str, int i) {
        mo30773w(i);
        mo30783I(str);
    }

    /* renamed from: K */
    protected <T extends AbstractC1179b> void m30806K(T t, VersionedParcel versionedParcel) {
        try {
            m30800e(t.getClass()).invoke(null, t, versionedParcel);
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

    /* renamed from: L */
    public void m30805L(AbstractC1179b abstractC1179b) {
        if (abstractC1179b == null) {
            mo30783I(null);
            return;
        }
        m30803N(abstractC1179b);
        VersionedParcel mo30781b = mo30781b();
        m30806K(abstractC1179b, mo30781b);
        mo30781b.mo30782a();
    }

    /* renamed from: M */
    public void m30804M(AbstractC1179b abstractC1179b, int i) {
        mo30773w(i);
        m30805L(abstractC1179b);
    }

    /* renamed from: a */
    protected abstract void mo30782a();

    /* renamed from: b */
    protected abstract VersionedParcel mo30781b();

    /* renamed from: f */
    public boolean m30799f() {
        return false;
    }

    /* renamed from: g */
    protected abstract boolean mo30780g();

    /* renamed from: h */
    public boolean m30798h(boolean z, int i) {
        return !mo30777m(i) ? z : mo30780g();
    }

    /* renamed from: i */
    protected abstract byte[] mo30779i();

    /* renamed from: j */
    public byte[] m30797j(byte[] bArr, int i) {
        return !mo30777m(i) ? bArr : mo30779i();
    }

    /* renamed from: k */
    protected abstract CharSequence mo30778k();

    /* renamed from: l */
    public CharSequence m30796l(CharSequence charSequence, int i) {
        return !mo30777m(i) ? charSequence : mo30778k();
    }

    /* renamed from: m */
    protected abstract boolean mo30777m(int i);

    /* renamed from: n */
    protected <T extends AbstractC1179b> T m30795n(String str, VersionedParcel versionedParcel) {
        try {
            return (T) m30801d(str).invoke(null, versionedParcel);
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

    /* renamed from: o */
    protected abstract int mo30776o();

    /* renamed from: p */
    public int m30794p(int i, int i2) {
        return !mo30777m(i2) ? i : mo30776o();
    }

    /* renamed from: q */
    protected abstract <T extends Parcelable> T mo30775q();

    /* renamed from: r */
    public <T extends Parcelable> T m30793r(T t, int i) {
        return !mo30777m(i) ? t : (T) mo30775q();
    }

    /* renamed from: s */
    protected abstract String mo30774s();

    /* renamed from: t */
    public String m30792t(String str, int i) {
        return !mo30777m(i) ? str : mo30774s();
    }

    /* renamed from: u */
    public <T extends AbstractC1179b> T m30791u() {
        String mo30774s = mo30774s();
        if (mo30774s == null) {
            return null;
        }
        return (T) m30795n(mo30774s, mo30781b());
    }

    /* renamed from: v */
    public <T extends AbstractC1179b> T m30790v(T t, int i) {
        return !mo30777m(i) ? t : (T) m30791u();
    }

    /* renamed from: w */
    protected abstract void mo30773w(int i);

    /* renamed from: x */
    public void m30789x(boolean z, boolean z2) {
    }

    /* renamed from: y */
    protected abstract void mo30772y(boolean z);

    /* renamed from: z */
    public void m30788z(boolean z, int i) {
        mo30773w(i);
        mo30772y(z);
    }
}
