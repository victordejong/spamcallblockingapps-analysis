package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import androidx.b.a;
import androidx.b.b;
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

    /* renamed from: a  reason: collision with root package name */
    protected final a<String, Method> f5863a;

    /* renamed from: b  reason: collision with root package name */
    protected final a<String, Method> f5864b;

    /* renamed from: c  reason: collision with root package name */
    protected final a<String, Class> f5865c;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    public VersionedParcel(a<String, Method> aVar, a<String, Method> aVar2, a<String, Class> aVar3) {
        this.f5863a = aVar;
        this.f5864b = aVar2;
        this.f5865c = aVar3;
    }

    private <T extends c> T a(String str, VersionedParcel versionedParcel) {
        try {
            Method method = this.f5863a.get(str);
            Method method2 = method;
            if (method == null) {
                System.currentTimeMillis();
                method2 = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
                this.f5863a.put(str, method2);
            }
            return (T) ((c) method2.invoke(null, versionedParcel));
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

    private Method a(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.f5864b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class b2 = b(cls);
            System.currentTimeMillis();
            method2 = b2.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f5864b.put(cls.getName(), method2);
        }
        return method2;
    }

    private <T, S extends Collection<T>> S a(S s) {
        int c2 = c();
        if (c2 < 0) {
            return null;
        }
        if (c2 != 0) {
            int c3 = c();
            if (c2 < 0) {
                return null;
            }
            if (c3 != 1) {
                if (c3 != 2) {
                    if (c3 != 3) {
                        if (c3 == 4) {
                            for (int i = c2; i > 0; i--) {
                                s.add(f());
                            }
                        } else if (c3 == 5) {
                            while (c2 > 0) {
                                s.add(g());
                                c2--;
                            }
                        }
                    } else {
                        for (int i2 = c2; i2 > 0; i2--) {
                            s.add(n());
                        }
                    }
                } else {
                    for (int i3 = c2; i3 > 0; i3--) {
                        s.add(j());
                    }
                }
            } else {
                for (int i4 = c2; i4 > 0; i4--) {
                    s.add(m());
                }
            }
        }
        return s;
    }

    private <T extends c> void a(T t, VersionedParcel versionedParcel) {
        try {
            a((Class) t.getClass()).invoke(null, t, versionedParcel);
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

    private void a(Serializable serializable) {
        if (serializable == null) {
            a((String) null);
            return;
        }
        String name = serializable.getClass().getName();
        a(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            a(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e);
        }
    }

    private Class b(Class<? extends c> cls) throws ClassNotFoundException {
        Class<?> cls2 = this.f5865c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f5865c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void b(c cVar) {
        try {
            a(b((Class<? extends c>) cVar.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    private Serializable n() {
        String f = f();
        if (f == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(new ByteArrayInputStream(h())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                @Override // java.io.ObjectInputStream
                protected final Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + f + ")", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + f + ")", e2);
        }
    }

    public final <T> List<T> a(List<T> list) {
        return !b(19) ? list : (List) a((VersionedParcel) new ArrayList());
    }

    public final <T> Set<T> a(Set<T> set) {
        return !b(1) ? set : (Set) a((VersionedParcel) new b());
    }

    protected abstract void a();

    protected abstract void a(float f);

    public final void a(float f, int i) {
        c(i);
        a(f);
    }

    protected abstract void a(int i);

    public final void a(int i, int i2) {
        c(i2);
        a(i);
    }

    protected abstract void a(long j);

    public final void a(long j, int i) {
        c(i);
        a(j);
    }

    protected abstract void a(Bundle bundle);

    public final void a(Bundle bundle, int i) {
        c(i);
        a(bundle);
    }

    protected abstract void a(IBinder iBinder);

    public final void a(IBinder iBinder, int i) {
        c(i);
        a(iBinder);
    }

    protected abstract void a(Parcelable parcelable);

    public final void a(Parcelable parcelable, int i) {
        c(i);
        a(parcelable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(c cVar) {
        if (cVar == null) {
            a((String) null);
            return;
        }
        b(cVar);
        VersionedParcel b2 = b();
        a((VersionedParcel) cVar, b2);
        b2.a();
    }

    public final void a(c cVar, int i) {
        c(i);
        a(cVar);
    }

    protected abstract void a(CharSequence charSequence);

    public final void a(CharSequence charSequence, int i) {
        c(i);
        a(charSequence);
    }

    protected abstract void a(String str);

    public final void a(String str, int i) {
        c(i);
        a(str);
    }

    public final <T> void a(Collection<T> collection, int i) {
        int i2;
        c(i);
        if (collection == null) {
            a(-1);
            return;
        }
        int size = collection.size();
        a(size);
        if (size > 0) {
            T next = collection.iterator().next();
            if (next instanceof String) {
                i2 = 4;
            } else if (next instanceof Parcelable) {
                i2 = 2;
            } else if (next instanceof c) {
                i2 = 1;
            } else if (next instanceof Serializable) {
                i2 = 3;
            } else if (next instanceof IBinder) {
                i2 = 5;
            } else if (next instanceof Integer) {
                i2 = 7;
            } else if (next instanceof Float) {
                i2 = 8;
            } else {
                throw new IllegalArgumentException(next.getClass().getName() + " cannot be VersionedParcelled");
            }
            a(i2);
            switch (i2) {
                case 1:
                    for (T t : collection) {
                        a(t);
                    }
                    return;
                case 2:
                    for (T t2 : collection) {
                        a(t2);
                    }
                    return;
                case 3:
                    for (T t3 : collection) {
                        a(t3);
                    }
                    return;
                case 4:
                    for (T t4 : collection) {
                        a(t4);
                    }
                    return;
                case 5:
                    for (T t5 : collection) {
                        a(t5);
                    }
                    return;
                case 6:
                default:
                    return;
                case 7:
                    for (T t6 : collection) {
                        a(t6.intValue());
                    }
                    return;
                case 8:
                    for (T t7 : collection) {
                        a(t7.floatValue());
                    }
                    return;
            }
        }
    }

    protected abstract void a(boolean z);

    public final void a(boolean z, int i) {
        c(i);
        a(z);
    }

    protected abstract void a(byte[] bArr);

    public final void a(byte[] bArr, int i) {
        c(i);
        a(bArr);
    }

    public final float b(float f, int i) {
        return !b(i) ? f : e();
    }

    public final int b(int i, int i2) {
        return !b(i2) ? i : c();
    }

    public final long b(long j, int i) {
        return !b(i) ? j : d();
    }

    public final Bundle b(Bundle bundle, int i) {
        return !b(i) ? bundle : k();
    }

    public final IBinder b(IBinder iBinder, int i) {
        return !b(i) ? iBinder : g();
    }

    public final <T extends Parcelable> T b(T t, int i) {
        return !b(i) ? t : (T) j();
    }

    protected abstract VersionedParcel b();

    public final <T extends c> T b(T t, int i) {
        return !b(i) ? t : (T) m();
    }

    public final CharSequence b(CharSequence charSequence, int i) {
        return !b(i) ? charSequence : i();
    }

    public final String b(String str, int i) {
        return !b(i) ? str : f();
    }

    protected abstract boolean b(int i);

    public final boolean b(boolean z, int i) {
        return !b(i) ? z : l();
    }

    public final byte[] b(byte[] bArr, int i) {
        return !b(i) ? bArr : h();
    }

    protected abstract int c();

    protected abstract void c(int i);

    protected abstract long d();

    protected abstract float e();

    protected abstract String f();

    protected abstract IBinder g();

    protected abstract byte[] h();

    protected abstract CharSequence i();

    protected abstract <T extends Parcelable> T j();

    protected abstract Bundle k();

    protected abstract boolean l();

    /* JADX INFO: Access modifiers changed from: protected */
    public final <T extends c> T m() {
        String f = f();
        if (f == null) {
            return null;
        }
        return (T) a(f, b());
    }
}
