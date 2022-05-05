package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {

    /* renamed from: a */
    protected final ArrayMap<String, Method> f5438a;

    /* renamed from: b */
    protected final ArrayMap<String, Method> f5439b;

    /* renamed from: c */
    protected final ArrayMap<String, Class> f5440c;

    /* renamed from: androidx.versionedparcelable.VersionedParcel$1 */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$1.class */
    class C05751 extends ObjectInputStream {
        @Override // java.io.ObjectInputStream
        protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            Class<?> cls = Class.forName(objectStreamClass.getName(), false, C05751.class.getClassLoader());
            return cls != null ? cls : super.resolveClass(objectStreamClass);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.f5438a = arrayMap;
        this.f5439b = arrayMap2;
        this.f5440c = arrayMap3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: N */
    private void m16568N(VersionedParcelable versionedParcelable) {
        try {
            mo16550I(m16567c(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: c */
    private Class m16567c(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        Class<?> cls2 = this.f5440c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f5440c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* renamed from: d */
    private Method m16566d(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.f5438a.get(str);
        Method method2 = method;
        if (method == null) {
            System.currentTimeMillis();
            method2 = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.f5438a.put(str, method2);
        }
        return method2;
    }

    /* renamed from: e */
    private Method m16565e(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.f5439b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class c = m16567c(cls);
            System.currentTimeMillis();
            method2 = c.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f5439b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: A */
    protected abstract void mo16554A(byte[] bArr);

    /* renamed from: B */
    public void m16576B(byte[] bArr, int i) {
        mo16539w(i);
        mo16554A(bArr);
    }

    /* renamed from: C */
    protected abstract void mo16553C(CharSequence charSequence);

    /* renamed from: D */
    public void m16575D(CharSequence charSequence, int i) {
        mo16539w(i);
        mo16553C(charSequence);
    }

    /* renamed from: E */
    protected abstract void mo16552E(int i);

    /* renamed from: F */
    public void m16574F(int i, int i2) {
        mo16539w(i2);
        mo16552E(i);
    }

    /* renamed from: G */
    protected abstract void mo16551G(Parcelable parcelable);

    /* renamed from: H */
    public void m16573H(Parcelable parcelable, int i) {
        mo16539w(i);
        mo16551G(parcelable);
    }

    /* renamed from: I */
    protected abstract void mo16550I(String str);

    /* renamed from: J */
    public void m16572J(String str, int i) {
        mo16539w(i);
        mo16550I(str);
    }

    /* renamed from: K */
    protected <T extends VersionedParcelable> void m16571K(T t, VersionedParcel versionedParcel) {
        try {
            m16565e(t.getClass()).invoke(null, t, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: L */
    public void m16570L(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            mo16550I(null);
            return;
        }
        m16568N(versionedParcelable);
        VersionedParcel b = mo16548b();
        m16571K(versionedParcelable, b);
        b.mo16549a();
    }

    /* renamed from: M */
    public void m16569M(VersionedParcelable versionedParcelable, int i) {
        mo16539w(i);
        m16570L(versionedParcelable);
    }

    /* renamed from: a */
    protected abstract void mo16549a();

    /* renamed from: b */
    protected abstract VersionedParcel mo16548b();

    /* renamed from: f */
    public boolean mo16547f() {
        return false;
    }

    /* renamed from: g */
    protected abstract boolean mo16546g();

    /* renamed from: h */
    public boolean m16564h(boolean z, int i) {
        return !mo16543m(i) ? z : mo16546g();
    }

    /* renamed from: i */
    protected abstract byte[] mo16545i();

    /* renamed from: j */
    public byte[] m16563j(byte[] bArr, int i) {
        return !mo16543m(i) ? bArr : mo16545i();
    }

    /* renamed from: k */
    protected abstract CharSequence mo16544k();

    /* renamed from: l */
    public CharSequence m16562l(CharSequence charSequence, int i) {
        return !mo16543m(i) ? charSequence : mo16544k();
    }

    /* renamed from: m */
    protected abstract boolean mo16543m(int i);

    /* renamed from: n */
    protected <T extends VersionedParcelable> T m16561n(String str, VersionedParcel versionedParcel) {
        try {
            return (T) ((VersionedParcelable) m16566d(str).invoke(null, versionedParcel));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: o */
    protected abstract int mo16542o();

    /* renamed from: p */
    public int m16560p(int i, int i2) {
        return !mo16543m(i2) ? i : mo16542o();
    }

    /* renamed from: q */
    protected abstract <T extends Parcelable> T mo16541q();

    /* renamed from: r */
    public <T extends Parcelable> T m16559r(T t, int i) {
        return !mo16543m(i) ? t : (T) mo16541q();
    }

    /* renamed from: s */
    protected abstract String mo16540s();

    /* renamed from: t */
    public String m16558t(String str, int i) {
        return !mo16543m(i) ? str : mo16540s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: u */
    public <T extends VersionedParcelable> T m16557u() {
        String s = mo16540s();
        if (s == null) {
            return null;
        }
        return (T) m16561n(s, mo16548b());
    }

    /* renamed from: v */
    public <T extends VersionedParcelable> T m16556v(T t, int i) {
        return !mo16543m(i) ? t : (T) m16557u();
    }

    /* renamed from: w */
    protected abstract void mo16539w(int i);

    /* renamed from: x */
    public void mo16538x(boolean z, boolean z2) {
    }

    /* renamed from: y */
    protected abstract void mo16537y(boolean z);

    /* renamed from: z */
    public void m16555z(boolean z, int i) {
        mo16539w(i);
        mo16537y(z);
    }
}
