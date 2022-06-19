package p1727n3.p1803i0;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import p1727n3.p1788g.C26174a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i0.c */
/* loaded from: classes-dex2jar.jar:n3/i0/c.class */
public abstract class AbstractC26405c {

    /* renamed from: a */
    public final C26174a<String, Method> f74013a;

    /* renamed from: b */
    public final C26174a<String, Method> f74014b;

    /* renamed from: c */
    public final C26174a<String, Class> f74015c;

    public AbstractC26405c(C26174a<String, Method> c26174a, C26174a<String, Method> c26174a2, C26174a<String, Class> c26174a3) {
        this.f74013a = c26174a;
        this.f74014b = c26174a2;
        this.f74015c = c26174a3;
    }

    /* renamed from: A */
    public <T extends AbstractC26407e> T m1938A(T t, int i) {
        return !mo1905n(i) ? t : (T) m1923z();
    }

    /* renamed from: B */
    public abstract void mo1922B(int i);

    /* renamed from: C */
    public abstract void mo1921C(boolean z);

    /* renamed from: D */
    public abstract void mo1920D(Bundle bundle);

    /* renamed from: E */
    public abstract void mo1919E(byte[] bArr);

    /* renamed from: F */
    public abstract void mo1918F(CharSequence charSequence);

    /* renamed from: G */
    public final <T> void m1937G(Collection<T> collection, int i) {
        int i2;
        mo1922B(i);
        if (collection == null) {
            mo1916I(-1);
            return;
        }
        int size = collection.size();
        mo1916I(size);
        if (size <= 0) {
            return;
        }
        T next = collection.iterator().next();
        if (next instanceof String) {
            i2 = 4;
        } else if (next instanceof Parcelable) {
            i2 = 2;
        } else if (next instanceof AbstractC26407e) {
            i2 = 1;
        } else if (next instanceof Serializable) {
            i2 = 3;
        } else if (next instanceof IBinder) {
            i2 = 5;
        } else if (next instanceof Integer) {
            i2 = 7;
        } else if (!(next instanceof Float)) {
            throw new IllegalArgumentException(C22128a.m8631d2(next, new StringBuilder(), " cannot be VersionedParcelled"));
        } else {
            i2 = 8;
        }
        mo1916I(i2);
        switch (i2) {
            case 1:
                for (T t : collection) {
                    m1936N(t);
                }
                return;
            case 2:
                for (T t2 : collection) {
                    mo1914K(t2);
                }
                return;
            case 3:
                for (T t3 : collection) {
                    if (t3 == null) {
                        mo1913L(null);
                    } else {
                        String name = t3.getClass().getName();
                        mo1913L(name);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                            objectOutputStream.writeObject(t3);
                            objectOutputStream.close();
                            mo1919E(byteArrayOutputStream.toByteArray());
                        } catch (IOException e) {
                            throw new RuntimeException(C22128a.m8725C2("VersionedParcelable encountered IOException writing serializable object (name = ", name, ")"), e);
                        }
                    }
                }
                return;
            case 4:
                for (T t4 : collection) {
                    mo1913L(t4);
                }
                return;
            case 5:
                for (T t5 : collection) {
                    mo1912M(t5);
                }
                return;
            case 6:
            default:
                return;
            case 7:
                for (T t6 : collection) {
                    mo1916I(t6.intValue());
                }
                return;
            case 8:
                for (T t7 : collection) {
                    mo1917H(t7.floatValue());
                }
                return;
        }
    }

    /* renamed from: H */
    public abstract void mo1917H(float f);

    /* renamed from: I */
    public abstract void mo1916I(int i);

    /* renamed from: J */
    public abstract void mo1915J(long j);

    /* renamed from: K */
    public abstract void mo1914K(Parcelable parcelable);

    /* renamed from: L */
    public abstract void mo1913L(String str);

    /* renamed from: M */
    public abstract void mo1912M(IBinder iBinder);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: N */
    public void m1936N(AbstractC26407e abstractC26407e) {
        if (abstractC26407e == null) {
            mo1913L(null);
            return;
        }
        try {
            mo1913L(m1935c(abstractC26407e.getClass()).getName());
            AbstractC26405c mo1910b = mo1910b();
            try {
                m1933e(abstractC26407e.getClass()).invoke(null, abstractC26407e, mo1910b);
                mo1910b.mo1911a();
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
            throw new RuntimeException(abstractC26407e.getClass().getSimpleName() + " does not have a Parcelizer", e5);
        }
    }

    /* renamed from: a */
    public abstract void mo1911a();

    /* renamed from: b */
    public abstract AbstractC26405c mo1910b();

    /* renamed from: c */
    public final Class m1935c(Class<? extends AbstractC26407e> cls) throws ClassNotFoundException {
        Class<?> orDefault = this.f74015c.getOrDefault(cls.getName(), null);
        Class<?> cls2 = orDefault;
        if (orDefault == null) {
            cls2 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f74015c.put(cls.getName(), cls2);
        }
        return cls2;
    }

    /* renamed from: d */
    public final Method m1934d(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method orDefault = this.f74013a.getOrDefault(str, null);
        Method method = orDefault;
        if (orDefault == null) {
            System.currentTimeMillis();
            method = Class.forName(str, true, AbstractC26405c.class.getClassLoader()).getDeclaredMethod("read", AbstractC26405c.class);
            this.f74013a.put(str, method);
        }
        return method;
    }

    /* renamed from: e */
    public final Method m1933e(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method orDefault = this.f74014b.getOrDefault(cls.getName(), null);
        Method method = orDefault;
        if (orDefault == null) {
            Class m1935c = m1935c(cls);
            System.currentTimeMillis();
            method = m1935c.getDeclaredMethod("write", cls, AbstractC26405c.class);
            this.f74014b.put(cls.getName(), method);
        }
        return method;
    }

    /* renamed from: f */
    public abstract boolean mo1909f();

    /* renamed from: g */
    public boolean m1932g(boolean z, int i) {
        return !mo1905n(i) ? z : mo1909f();
    }

    /* renamed from: h */
    public abstract Bundle mo1908h();

    /* renamed from: i */
    public Bundle m1931i(Bundle bundle, int i) {
        return !mo1905n(i) ? bundle : mo1908h();
    }

    /* renamed from: j */
    public abstract byte[] mo1907j();

    /* renamed from: k */
    public abstract CharSequence mo1906k();

    /* renamed from: l */
    public CharSequence m1930l(CharSequence charSequence, int i) {
        return !mo1905n(i) ? charSequence : mo1906k();
    }

    /* renamed from: m */
    public final <T, S extends Collection<T>> S m1929m(S s) {
        Serializable serializable;
        int mo1903q = mo1903q();
        if (mo1903q < 0) {
            return null;
        }
        if (mo1903q != 0) {
            int mo1903q2 = mo1903q();
            if (mo1903q < 0) {
                return null;
            }
            if (mo1903q2 != 1) {
                if (mo1903q2 != 2) {
                    if (mo1903q2 != 3) {
                        if (mo1903q2 == 4) {
                            for (int i = mo1903q; i > 0; i--) {
                                s.add(mo1900w());
                            }
                        } else if (mo1903q2 == 5) {
                            while (mo1903q > 0) {
                                s.add(mo1899y());
                                mo1903q--;
                            }
                        }
                    } else {
                        for (int i2 = mo1903q; i2 > 0; i2--) {
                            String mo1900w = mo1900w();
                            if (mo1900w == null) {
                                serializable = null;
                            } else {
                                try {
                                    serializable = (Serializable) new C26404b(this, new ByteArrayInputStream(mo1907j())).readObject();
                                } catch (IOException e) {
                                    throw new RuntimeException(C22128a.m8725C2("VersionedParcelable encountered IOException reading a Serializable object (name = ", mo1900w, ")"), e);
                                } catch (ClassNotFoundException e2) {
                                    throw new RuntimeException(C22128a.m8725C2("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = ", mo1900w, ")"), e2);
                                }
                            }
                            s.add(serializable);
                        }
                    }
                } else {
                    for (int i3 = mo1903q; i3 > 0; i3--) {
                        s.add(mo1901u());
                    }
                }
            } else {
                for (int i4 = mo1903q; i4 > 0; i4--) {
                    s.add(m1923z());
                }
            }
        }
        return s;
    }

    /* renamed from: n */
    public abstract boolean mo1905n(int i);

    /* renamed from: o */
    public abstract float mo1904o();

    /* renamed from: p */
    public float m1928p(float f, int i) {
        return !mo1905n(i) ? f : mo1904o();
    }

    /* renamed from: q */
    public abstract int mo1903q();

    /* renamed from: r */
    public int m1927r(int i, int i2) {
        return !mo1905n(i2) ? i : mo1903q();
    }

    /* renamed from: s */
    public abstract long mo1902s();

    /* renamed from: t */
    public long m1926t(long j, int i) {
        return !mo1905n(i) ? j : mo1902s();
    }

    /* renamed from: u */
    public abstract <T extends Parcelable> T mo1901u();

    /* renamed from: v */
    public <T extends Parcelable> T m1925v(T t, int i) {
        return !mo1905n(i) ? t : (T) mo1901u();
    }

    /* renamed from: w */
    public abstract String mo1900w();

    /* renamed from: x */
    public String m1924x(String str, int i) {
        return !mo1905n(i) ? str : mo1900w();
    }

    /* renamed from: y */
    public abstract IBinder mo1899y();

    /* renamed from: z */
    public <T extends AbstractC26407e> T m1923z() {
        String mo1900w = mo1900w();
        if (mo1900w == null) {
            return null;
        }
        try {
            return (T) m1934d(mo1900w).invoke(null, mo1910b());
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
}
