package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import androidx.p023b.C0428a;
import androidx.p023b.C0430b;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
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
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {

    /* renamed from: a */
    protected final C0428a<String, Method> f10949a;

    /* renamed from: b */
    protected final C0428a<String, Method> f10950b;

    /* renamed from: c */
    protected final C0428a<String, Class> f10951c;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    public VersionedParcel(C0428a<String, Method> c0428a, C0428a<String, Method> c0428a2, C0428a<String, Class> c0428a3) {
        this.f10949a = c0428a;
        this.f10950b = c0428a2;
        this.f10951c = c0428a3;
    }

    /* renamed from: a */
    private <T extends AbstractC2922c> T m39652a(String str, VersionedParcel versionedParcel) {
        try {
            Method method = this.f10949a.get(str);
            Method method2 = method;
            if (method == null) {
                System.currentTimeMillis();
                method2 = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
                this.f10949a.put(str, method2);
            }
            return (T) method2.invoke(null, versionedParcel);
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
    private Method m39654a(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.f10950b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class m39636b = m39636b(cls);
            System.currentTimeMillis();
            method2 = m39636b.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f10950b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: a */
    private <T, S extends Collection<T>> S m39651a(S s) {
        int mo39613c = mo39613c();
        if (mo39613c < 0) {
            return null;
        }
        if (mo39613c != 0) {
            int mo39613c2 = mo39613c();
            if (mo39613c < 0) {
                return null;
            }
            if (mo39613c2 != 1) {
                if (mo39613c2 != 2) {
                    if (mo39613c2 != 3) {
                        if (mo39613c2 == 4) {
                            for (int i = mo39613c; i > 0; i--) {
                                s.add(mo39609f());
                            }
                        } else if (mo39613c2 == 5) {
                            while (mo39613c > 0) {
                                s.add(mo39608g());
                                mo39613c--;
                            }
                        }
                    } else {
                        for (int i2 = mo39613c; i2 > 0; i2--) {
                            s.add(m39631n());
                        }
                    }
                } else {
                    for (int i3 = mo39613c; i3 > 0; i3--) {
                        s.add(mo39605j());
                    }
                }
            } else {
                for (int i4 = mo39613c; i4 > 0; i4--) {
                    s.add(m39632m());
                }
            }
        }
        return s;
    }

    /* renamed from: a */
    private <T extends AbstractC2922c> void m39657a(T t, VersionedParcel versionedParcel) {
        try {
            m39654a((Class) t.getClass()).invoke(null, t, versionedParcel);
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
    private void m39656a(Serializable serializable) {
        if (serializable == null) {
            mo39618a((String) null);
            return;
        }
        String name = serializable.getClass().getName();
        mo39618a(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            mo39616a(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e);
        }
    }

    /* renamed from: b */
    private Class m39636b(Class<? extends AbstractC2922c> cls) throws ClassNotFoundException {
        Class<?> cls2 = this.f10951c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f10951c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m39639b(AbstractC2922c abstractC2922c) {
        try {
            mo39618a(m39636b((Class<? extends AbstractC2922c>) abstractC2922c.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(abstractC2922c.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: n */
    private Serializable m39631n() {
        String mo39609f = mo39609f();
        if (mo39609f == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(mo39607h())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                @Override // java.io.ObjectInputStream
                protected final Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + mo39609f + ")", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + mo39609f + ")", e2);
        }
    }

    /* renamed from: a */
    public final <T> List<T> m39649a(List<T> list) {
        return !mo39614b(19) ? list : (List) m39651a((VersionedParcel) new ArrayList());
    }

    /* renamed from: a */
    public final <T> Set<T> m39648a(Set<T> set) {
        return !mo39614b(1) ? set : (Set) m39651a((VersionedParcel) new C0430b());
    }

    /* renamed from: a */
    protected abstract void mo39626a();

    /* renamed from: a */
    protected abstract void mo39625a(float f);

    /* renamed from: a */
    public final void m39665a(float f, int i) {
        mo39612c(i);
        mo39625a(f);
    }

    /* renamed from: a */
    protected abstract void mo39624a(int i);

    /* renamed from: a */
    public final void m39664a(int i, int i2) {
        mo39612c(i2);
        mo39624a(i);
    }

    /* renamed from: a */
    protected abstract void mo39623a(long j);

    /* renamed from: a */
    public final void m39663a(long j, int i) {
        mo39612c(i);
        mo39623a(j);
    }

    /* renamed from: a */
    protected abstract void mo39622a(Bundle bundle);

    /* renamed from: a */
    public final void m39662a(Bundle bundle, int i) {
        mo39612c(i);
        mo39622a(bundle);
    }

    /* renamed from: a */
    protected abstract void mo39621a(IBinder iBinder);

    /* renamed from: a */
    public final void m39661a(IBinder iBinder, int i) {
        mo39612c(i);
        mo39621a(iBinder);
    }

    /* renamed from: a */
    protected abstract void mo39620a(Parcelable parcelable);

    /* renamed from: a */
    public final void m39660a(Parcelable parcelable, int i) {
        mo39612c(i);
        mo39620a(parcelable);
    }

    /* renamed from: a */
    public final void m39659a(AbstractC2922c abstractC2922c) {
        if (abstractC2922c == null) {
            mo39618a((String) null);
            return;
        }
        m39639b(abstractC2922c);
        VersionedParcel mo39615b = mo39615b();
        m39657a((VersionedParcel) abstractC2922c, mo39615b);
        mo39615b.mo39626a();
    }

    /* renamed from: a */
    public final void m39658a(AbstractC2922c abstractC2922c, int i) {
        mo39612c(i);
        m39659a(abstractC2922c);
    }

    /* renamed from: a */
    protected abstract void mo39619a(CharSequence charSequence);

    /* renamed from: a */
    public final void m39655a(CharSequence charSequence, int i) {
        mo39612c(i);
        mo39619a(charSequence);
    }

    /* renamed from: a */
    protected abstract void mo39618a(String str);

    /* renamed from: a */
    public final void m39653a(String str, int i) {
        mo39612c(i);
        mo39618a(str);
    }

    /* renamed from: a */
    public final <T> void m39650a(Collection<T> collection, int i) {
        int i2;
        mo39612c(i);
        if (collection == null) {
            mo39624a(-1);
            return;
        }
        int size = collection.size();
        mo39624a(size);
        if (size <= 0) {
            return;
        }
        T next = collection.iterator().next();
        if (next instanceof String) {
            i2 = 4;
        } else if (next instanceof Parcelable) {
            i2 = 2;
        } else if (next instanceof AbstractC2922c) {
            i2 = 1;
        } else if (next instanceof Serializable) {
            i2 = 3;
        } else if (next instanceof IBinder) {
            i2 = 5;
        } else if (next instanceof Integer) {
            i2 = 7;
        } else if (!(next instanceof Float)) {
            throw new IllegalArgumentException(next.getClass().getName() + " cannot be VersionedParcelled");
        } else {
            i2 = 8;
        }
        mo39624a(i2);
        switch (i2) {
            case 1:
                for (T t : collection) {
                    m39659a(t);
                }
                return;
            case 2:
                for (T t2 : collection) {
                    mo39620a(t2);
                }
                return;
            case 3:
                for (T t3 : collection) {
                    m39656a(t3);
                }
                return;
            case 4:
                for (T t4 : collection) {
                    mo39618a(t4);
                }
                return;
            case 5:
                for (T t5 : collection) {
                    mo39621a(t5);
                }
                return;
            case 6:
            default:
                return;
            case 7:
                for (T t6 : collection) {
                    mo39624a(t6.intValue());
                }
                return;
            case 8:
                for (T t7 : collection) {
                    mo39625a(t7.floatValue());
                }
                return;
        }
    }

    /* renamed from: a */
    protected abstract void mo39617a(boolean z);

    /* renamed from: a */
    public final void m39647a(boolean z, int i) {
        mo39612c(i);
        mo39617a(z);
    }

    /* renamed from: a */
    protected abstract void mo39616a(byte[] bArr);

    /* renamed from: a */
    public final void m39646a(byte[] bArr, int i) {
        mo39612c(i);
        mo39616a(bArr);
    }

    /* renamed from: b */
    public final float m39645b(float f, int i) {
        return !mo39614b(i) ? f : mo39610e();
    }

    /* renamed from: b */
    public final int m39644b(int i, int i2) {
        return !mo39614b(i2) ? i : mo39613c();
    }

    /* renamed from: b */
    public final long m39643b(long j, int i) {
        return !mo39614b(i) ? j : mo39611d();
    }

    /* renamed from: b */
    public final Bundle m39642b(Bundle bundle, int i) {
        return !mo39614b(i) ? bundle : mo39604k();
    }

    /* renamed from: b */
    public final IBinder m39641b(IBinder iBinder, int i) {
        return !mo39614b(i) ? iBinder : mo39608g();
    }

    /* renamed from: b */
    public final <T extends Parcelable> T m39640b(T t, int i) {
        return !mo39614b(i) ? t : (T) mo39605j();
    }

    /* renamed from: b */
    protected abstract VersionedParcel mo39615b();

    /* renamed from: b */
    public final <T extends AbstractC2922c> T m39638b(T t, int i) {
        return !mo39614b(i) ? t : (T) m39632m();
    }

    /* renamed from: b */
    public final CharSequence m39637b(CharSequence charSequence, int i) {
        return !mo39614b(i) ? charSequence : mo39606i();
    }

    /* renamed from: b */
    public final String m39635b(String str, int i) {
        return !mo39614b(i) ? str : mo39609f();
    }

    /* renamed from: b */
    protected abstract boolean mo39614b(int i);

    /* renamed from: b */
    public final boolean m39634b(boolean z, int i) {
        return !mo39614b(i) ? z : mo39603l();
    }

    /* renamed from: b */
    public final byte[] m39633b(byte[] bArr, int i) {
        return !mo39614b(i) ? bArr : mo39607h();
    }

    /* renamed from: c */
    protected abstract int mo39613c();

    /* renamed from: c */
    protected abstract void mo39612c(int i);

    /* renamed from: d */
    protected abstract long mo39611d();

    /* renamed from: e */
    protected abstract float mo39610e();

    /* renamed from: f */
    protected abstract String mo39609f();

    /* renamed from: g */
    protected abstract IBinder mo39608g();

    /* renamed from: h */
    protected abstract byte[] mo39607h();

    /* renamed from: i */
    protected abstract CharSequence mo39606i();

    /* renamed from: j */
    protected abstract <T extends Parcelable> T mo39605j();

    /* renamed from: k */
    protected abstract Bundle mo39604k();

    /* renamed from: l */
    protected abstract boolean mo39603l();

    /* renamed from: m */
    public final <T extends AbstractC2922c> T m39632m() {
        String mo39609f = mo39609f();
        if (mo39609f == null) {
            return null;
        }
        return (T) m39652a(mo39609f, mo39615b());
    }
}
