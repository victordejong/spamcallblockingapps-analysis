package androidx.versionedparcelable;

import android.os.Parcelable;
import d.e.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.versionedparcelable.a */
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/a.class */
public abstract class AbstractC0520a {

    /* renamed from: a */
    protected final a<String, Method> f2785a;

    /* renamed from: b */
    protected final a<String, Method> f2786b;

    /* renamed from: c */
    protected final a<String, Class> f2787c;

    public AbstractC0520a(a<String, Method> aVar, a<String, Method> aVar2, a<String, Class> aVar3) {
        this.f2785a = aVar;
        this.f2786b = aVar2;
        this.f2787c = aVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: N */
    private void m11959N(AbstractC0521c abstractC0521c) {
        try {
            m11964I(m11956c(abstractC0521c.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(abstractC0521c.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: c */
    private Class m11956c(Class<? extends AbstractC0521c> cls) {
        Class<?> cls2 = (Class) this.f2787c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f2787c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* renamed from: d */
    private Method m11955d(String str) {
        Method method = (Method) this.f2785a.get(str);
        Method method2 = method;
        if (method == null) {
            System.currentTimeMillis();
            method2 = Class.forName(str, true, AbstractC0520a.class.getClassLoader()).getDeclaredMethod("read", AbstractC0520a.class);
            this.f2785a.put(str, method2);
        }
        return method2;
    }

    /* renamed from: e */
    private Method m11954e(Class cls) {
        Method method = (Method) this.f2786b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class m11956c = m11956c(cls);
            System.currentTimeMillis();
            method2 = m11956c.getDeclaredMethod("write", cls, AbstractC0520a.class);
            this.f2786b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: A */
    protected abstract void m11972A(byte[] bArr);

    /* renamed from: B */
    public void m11971B(byte[] bArr, int i) {
        m11936w(i);
        m11972A(bArr);
    }

    /* renamed from: C */
    protected abstract void m11970C(CharSequence charSequence);

    /* renamed from: D */
    public void m11969D(CharSequence charSequence, int i) {
        m11936w(i);
        m11970C(charSequence);
    }

    /* renamed from: E */
    protected abstract void m11968E(int i);

    /* renamed from: F */
    public void m11967F(int i, int i2) {
        m11936w(i2);
        m11968E(i);
    }

    /* renamed from: G */
    protected abstract void m11966G(Parcelable parcelable);

    /* renamed from: H */
    public void m11965H(Parcelable parcelable, int i) {
        m11936w(i);
        m11966G(parcelable);
    }

    /* renamed from: I */
    protected abstract void m11964I(String str);

    /* renamed from: J */
    public void m11963J(String str, int i) {
        m11936w(i);
        m11964I(str);
    }

    /* renamed from: K */
    protected <T extends AbstractC0521c> void m11962K(T t, AbstractC0520a abstractC0520a) {
        try {
            m11954e(t.getClass()).invoke(null, t, abstractC0520a);
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
    public void m11961L(AbstractC0521c abstractC0521c) {
        if (abstractC0521c == null) {
            m11964I(null);
            return;
        }
        m11959N(abstractC0521c);
        AbstractC0520a m11957b = m11957b();
        m11962K(abstractC0521c, m11957b);
        m11957b.m11958a();
    }

    /* renamed from: M */
    public void m11960M(AbstractC0521c abstractC0521c, int i) {
        m11936w(i);
        m11961L(abstractC0521c);
    }

    /* renamed from: a */
    protected abstract void m11958a();

    /* renamed from: b */
    protected abstract AbstractC0520a m11957b();

    /* renamed from: f */
    public boolean m11953f() {
        return false;
    }

    /* renamed from: g */
    protected abstract boolean m11952g();

    /* renamed from: h */
    public boolean m11951h(boolean z, int i) {
        return !m11946m(i) ? z : m11952g();
    }

    /* renamed from: i */
    protected abstract byte[] m11950i();

    /* renamed from: j */
    public byte[] m11949j(byte[] bArr, int i) {
        return !m11946m(i) ? bArr : m11950i();
    }

    /* renamed from: k */
    protected abstract CharSequence m11948k();

    /* renamed from: l */
    public CharSequence m11947l(CharSequence charSequence, int i) {
        return !m11946m(i) ? charSequence : m11948k();
    }

    /* renamed from: m */
    protected abstract boolean m11946m(int i);

    /* renamed from: n */
    protected <T extends AbstractC0521c> T m11945n(String str, AbstractC0520a abstractC0520a) {
        try {
            return (T) m11955d(str).invoke(null, abstractC0520a);
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
    protected abstract int m11944o();

    /* renamed from: p */
    public int m11943p(int i, int i2) {
        return !m11946m(i2) ? i : m11944o();
    }

    /* renamed from: q */
    protected abstract <T extends Parcelable> T m11942q();

    /* renamed from: r */
    public <T extends Parcelable> T m11941r(T t, int i) {
        return !m11946m(i) ? t : (T) m11942q();
    }

    /* renamed from: s */
    protected abstract String m11940s();

    /* renamed from: t */
    public String m11939t(String str, int i) {
        return !m11946m(i) ? str : m11940s();
    }

    /* renamed from: u */
    public <T extends AbstractC0521c> T m11938u() {
        String m11940s = m11940s();
        if (m11940s == null) {
            return null;
        }
        return (T) m11945n(m11940s, m11957b());
    }

    /* renamed from: v */
    public <T extends AbstractC0521c> T m11937v(T t, int i) {
        return !m11946m(i) ? t : (T) m11938u();
    }

    /* renamed from: w */
    protected abstract void m11936w(int i);

    /* renamed from: x */
    public void m11935x(boolean z, boolean z2) {
    }

    /* renamed from: y */
    protected abstract void m11934y(boolean z);

    /* renamed from: z */
    public void m11933z(boolean z, int i) {
        m11936w(i);
        m11934y(z);
    }
}
