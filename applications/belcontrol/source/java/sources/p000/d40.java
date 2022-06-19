package p000;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
/* renamed from: d40 */
/* loaded from: classes-dex2jar.jar:d40.class */
public abstract class d40 {

    /* renamed from: a */
    public final b4<String, Method> f5752a;

    /* renamed from: b */
    public final b4<String, Method> f5753b;

    /* renamed from: c */
    public final b4<String, Class> f5754c;

    /* renamed from: d40$a */
    /* loaded from: classes-dex2jar.jar:d40$a.class */
    public class C1275a extends ObjectInputStream {
        public C1275a(d40 d40Var, InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        public Class<?> resolveClass(ObjectStreamClass objectStreamClass) {
            Class<?> cls = Class.forName(objectStreamClass.getName(), false, C1275a.class.getClassLoader());
            return cls != null ? cls : super.resolveClass(objectStreamClass);
        }
    }

    public d40(b4<String, Method> b4Var, b4<String, Method> b4Var2, b4<String, Class> b4Var3) {
        this.f5752a = b4Var;
        this.f5753b = b4Var2;
        this.f5754c = b4Var3;
    }

    /* renamed from: A */
    public <T extends Parcelable> T m2889A(T t, int i) {
        return !m2833q(i) ? t : (T) m2824z();
    }

    /* renamed from: B */
    public Serializable m2888B() {
        String m2886D = m2886D();
        if (m2886D == null) {
            return null;
        }
        try {
            return (Serializable) new C1275a(this, new ByteArrayInputStream(m2841l())).readObject();
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + m2886D + ")", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + m2886D + ")", e2);
        }
    }

    /* renamed from: C */
    public <T> Set<T> m2887C(Set<T> set, int i) {
        return !m2833q(i) ? set : (Set) m2834p(new C0284c4());
    }

    /* renamed from: D */
    public abstract String m2886D();

    /* renamed from: E */
    public String m2885E(String str, int i) {
        return !m2833q(i) ? str : m2886D();
    }

    /* renamed from: F */
    public abstract IBinder m2884F();

    /* renamed from: G */
    public IBinder m2883G(IBinder iBinder, int i) {
        return !m2833q(i) ? iBinder : m2884F();
    }

    /* renamed from: H */
    public <T extends f40> T m2882H() {
        String m2886D = m2886D();
        if (m2886D == null) {
            return null;
        }
        return (T) m2830t(m2886D, m2861b());
    }

    /* renamed from: I */
    public <T extends f40> T m2881I(T t, int i) {
        return !m2833q(i) ? t : (T) m2882H();
    }

    /* renamed from: J */
    public abstract void m2880J(int i);

    /* renamed from: K */
    public void m2879K(boolean z, boolean z2) {
    }

    /* renamed from: L */
    public abstract void m2878L(boolean z);

    /* renamed from: M */
    public void m2877M(boolean z, int i) {
        m2880J(i);
        m2878L(z);
    }

    /* renamed from: N */
    public abstract void m2876N(Bundle bundle);

    /* renamed from: O */
    public void m2875O(Bundle bundle, int i) {
        m2880J(i);
        m2876N(bundle);
    }

    /* renamed from: P */
    public abstract void m2874P(byte[] bArr);

    /* renamed from: Q */
    public void m2873Q(byte[] bArr, int i) {
        m2880J(i);
        m2874P(bArr);
    }

    /* renamed from: R */
    public abstract void m2872R(CharSequence charSequence);

    /* renamed from: S */
    public void m2871S(CharSequence charSequence, int i) {
        m2880J(i);
        m2872R(charSequence);
    }

    /* renamed from: T */
    public final <T> void m2870T(Collection<T> collection) {
        if (collection == null) {
            m2866X(-1);
            return;
        }
        int size = collection.size();
        m2866X(size);
        if (size <= 0) {
            return;
        }
        int m2855e = m2855e(collection.iterator().next());
        m2866X(m2855e);
        switch (m2855e) {
            case 1:
                for (T t : collection) {
                    m2840l0(t);
                }
                return;
            case 2:
                for (T t2 : collection) {
                    m2858c0(t2);
                }
                return;
            case 3:
                for (T t3 : collection) {
                    m2854e0(t3);
                }
                return;
            case 4:
                for (T t4 : collection) {
                    m2850g0(t4);
                }
                return;
            case 5:
                for (T t5 : collection) {
                    m2846i0(t5);
                }
                return;
            case 6:
            default:
                return;
            case 7:
                for (T t6 : collection) {
                    m2866X(t6.intValue());
                }
                return;
            case 8:
                for (T t7 : collection) {
                    m2868V(t7.floatValue());
                }
                return;
        }
    }

    /* renamed from: U */
    public final <T> void m2869U(Collection<T> collection, int i) {
        m2880J(i);
        m2870T(collection);
    }

    /* renamed from: V */
    public abstract void m2868V(float f);

    /* renamed from: W */
    public void m2867W(float f, int i) {
        m2880J(i);
        m2868V(f);
    }

    /* renamed from: X */
    public abstract void m2866X(int i);

    /* renamed from: Y */
    public void m2865Y(int i, int i2) {
        m2880J(i2);
        m2866X(i);
    }

    /* renamed from: Z */
    public <T> void m2864Z(List<T> list, int i) {
        m2869U(list, i);
    }

    /* renamed from: a */
    public abstract void m2863a();

    /* renamed from: a0 */
    public abstract void m2862a0(long j);

    /* renamed from: b */
    public abstract d40 m2861b();

    /* renamed from: b0 */
    public void m2860b0(long j, int i) {
        m2880J(i);
        m2862a0(j);
    }

    /* renamed from: c */
    public final Class m2859c(Class<? extends f40> cls) {
        Class<?> cls2 = (Class) this.f5754c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f5754c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* renamed from: c0 */
    public abstract void m2858c0(Parcelable parcelable);

    /* renamed from: d */
    public final Method m2857d(String str) {
        Method method = (Method) this.f5752a.get(str);
        Method method2 = method;
        if (method == null) {
            System.currentTimeMillis();
            method2 = Class.forName(str, true, d40.class.getClassLoader()).getDeclaredMethod("read", d40.class);
            this.f5752a.put(str, method2);
        }
        return method2;
    }

    /* renamed from: d0 */
    public void m2856d0(Parcelable parcelable, int i) {
        m2880J(i);
        m2858c0(parcelable);
    }

    /* renamed from: e */
    public final <T> int m2855e(T t) {
        if (t instanceof String) {
            return 4;
        }
        if (t instanceof Parcelable) {
            return 2;
        }
        if (t instanceof f40) {
            return 1;
        }
        if (t instanceof Serializable) {
            return 3;
        }
        if (t instanceof IBinder) {
            return 5;
        }
        if (t instanceof Integer) {
            return 7;
        }
        if (t instanceof Float) {
            return 8;
        }
        throw new IllegalArgumentException(t.getClass().getName() + " cannot be VersionedParcelled");
    }

    /* renamed from: e0 */
    public final void m2854e0(Serializable serializable) {
        if (serializable == null) {
            m2850g0(null);
            return;
        }
        String name = serializable.getClass().getName();
        m2850g0(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            m2874P(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e);
        }
    }

    /* renamed from: f */
    public final Method m2853f(Class cls) {
        Method method = (Method) this.f5753b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class m2859c = m2859c(cls);
            System.currentTimeMillis();
            method2 = m2859c.getDeclaredMethod("write", cls, d40.class);
            this.f5753b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: f0 */
    public <T> void m2852f0(Set<T> set, int i) {
        m2869U(set, i);
    }

    /* renamed from: g */
    public boolean m2851g() {
        return false;
    }

    /* renamed from: g0 */
    public abstract void m2850g0(String str);

    /* renamed from: h */
    public abstract boolean m2849h();

    /* renamed from: h0 */
    public void m2848h0(String str, int i) {
        m2880J(i);
        m2850g0(str);
    }

    /* renamed from: i */
    public boolean m2847i(boolean z, int i) {
        return !m2833q(i) ? z : m2849h();
    }

    /* renamed from: i0 */
    public abstract void m2846i0(IBinder iBinder);

    /* renamed from: j */
    public abstract Bundle m2845j();

    /* renamed from: j0 */
    public void m2844j0(IBinder iBinder, int i) {
        m2880J(i);
        m2846i0(iBinder);
    }

    /* renamed from: k */
    public Bundle m2843k(Bundle bundle, int i) {
        return !m2833q(i) ? bundle : m2845j();
    }

    /* renamed from: k0 */
    public <T extends f40> void m2842k0(T t, d40 d40Var) {
        try {
            m2853f(t.getClass()).invoke(null, t, d40Var);
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

    /* renamed from: l */
    public abstract byte[] m2841l();

    /* renamed from: l0 */
    public void m2840l0(f40 f40Var) {
        if (f40Var == null) {
            m2850g0(null);
            return;
        }
        m2836n0(f40Var);
        d40 m2861b = m2861b();
        m2842k0(f40Var, m2861b);
        m2861b.m2863a();
    }

    /* renamed from: m */
    public byte[] m2839m(byte[] bArr, int i) {
        return !m2833q(i) ? bArr : m2841l();
    }

    /* renamed from: m0 */
    public void m2838m0(f40 f40Var, int i) {
        m2880J(i);
        m2840l0(f40Var);
    }

    /* renamed from: n */
    public abstract CharSequence m2837n();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n0 */
    public final void m2836n0(f40 f40Var) {
        try {
            m2850g0(m2859c(f40Var.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(f40Var.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: o */
    public CharSequence m2835o(CharSequence charSequence, int i) {
        return !m2833q(i) ? charSequence : m2837n();
    }

    /* renamed from: p */
    public final <T, S extends Collection<T>> S m2834p(S s) {
        int m2829u = m2829u();
        if (m2829u < 0) {
            return null;
        }
        if (m2829u != 0) {
            int m2829u2 = m2829u();
            if (m2829u < 0) {
                return null;
            }
            if (m2829u2 != 1) {
                if (m2829u2 != 2) {
                    if (m2829u2 != 3) {
                        if (m2829u2 == 4) {
                            for (int i = m2829u; i > 0; i--) {
                                s.add(m2886D());
                            }
                        } else if (m2829u2 == 5) {
                            while (m2829u > 0) {
                                s.add(m2884F());
                                m2829u--;
                            }
                        }
                    } else {
                        for (int i2 = m2829u; i2 > 0; i2--) {
                            s.add(m2888B());
                        }
                    }
                } else {
                    for (int i3 = m2829u; i3 > 0; i3--) {
                        s.add(m2824z());
                    }
                }
            } else {
                for (int i4 = m2829u; i4 > 0; i4--) {
                    s.add(m2882H());
                }
            }
        }
        return s;
    }

    /* renamed from: q */
    public abstract boolean m2833q(int i);

    /* renamed from: r */
    public abstract float m2832r();

    /* renamed from: s */
    public float m2831s(float f, int i) {
        return !m2833q(i) ? f : m2832r();
    }

    /* renamed from: t */
    public <T extends f40> T m2830t(String str, d40 d40Var) {
        try {
            return (T) m2857d(str).invoke(null, d40Var);
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

    /* renamed from: u */
    public abstract int m2829u();

    /* renamed from: v */
    public int m2828v(int i, int i2) {
        return !m2833q(i2) ? i : m2829u();
    }

    /* renamed from: w */
    public <T> List<T> m2827w(List<T> list, int i) {
        return !m2833q(i) ? list : (List) m2834p(new ArrayList());
    }

    /* renamed from: x */
    public abstract long m2826x();

    /* renamed from: y */
    public long m2825y(long j, int i) {
        return !m2833q(i) ? j : m2826x();
    }

    /* renamed from: z */
    public abstract <T extends Parcelable> T m2824z();
}
