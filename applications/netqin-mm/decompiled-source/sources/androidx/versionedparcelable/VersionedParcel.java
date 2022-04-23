package androidx.versionedparcelable;

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
import p012b.p035f.C0780a;
import p012b.p035f.C0782b;
import p012b.p130z.AbstractC1978c;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {

    /* renamed from: a */
    public final C0780a<String, Method> f2801a;

    /* renamed from: b */
    public final C0780a<String, Method> f2802b;

    /* renamed from: c */
    public final C0780a<String, Class> f2803c;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: androidx.versionedparcelable.VersionedParcel$a */
    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$a.class */
    public class C0552a extends ObjectInputStream {
        public C0552a(VersionedParcel versionedParcel, InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.ObjectInputStream
        public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
            Class<?> cls = Class.forName(objectStreamClass.getName(), false, C0552a.class.getClassLoader());
            return cls != null ? cls : super.resolveClass(objectStreamClass);
        }
    }

    public VersionedParcel(C0780a<String, Method> aVar, C0780a<String, Method> aVar2, C0780a<String, Class> aVar3) {
        this.f2801a = aVar;
        this.f2802b = aVar2;
        this.f2803c = aVar3;
    }

    /* renamed from: a */
    public float m37001a(float f, int i) {
        return !mo31385a(i) ? f : mo31369h();
    }

    /* renamed from: a */
    public int m37000a(int i, int i2) {
        return !mo31385a(i2) ? i : mo31368i();
    }

    /* renamed from: a */
    public final <T> int m36989a(T t) {
        if (t instanceof String) {
            return 4;
        }
        if (t instanceof Parcelable) {
            return 2;
        }
        if (t instanceof AbstractC1978c) {
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

    /* renamed from: a */
    public long m36999a(long j, int i) {
        return !mo31385a(i) ? j : mo31367j();
    }

    /* renamed from: a */
    public Bundle m36998a(Bundle bundle, int i) {
        return !mo31385a(i) ? bundle : mo31372e();
    }

    /* renamed from: a */
    public IBinder m36997a(IBinder iBinder, int i) {
        return !mo31385a(i) ? iBinder : mo31364n();
    }

    /* renamed from: a */
    public <T extends Parcelable> T m36996a(T t, int i) {
        return !mo31385a(i) ? t : (T) mo31366k();
    }

    /* renamed from: a */
    public <T extends AbstractC1978c> T m36994a(T t, int i) {
        return !mo31385a(i) ? t : (T) m36960o();
    }

    /* renamed from: a */
    public <T extends AbstractC1978c> T m36986a(String str, VersionedParcel versionedParcel) {
        try {
            return (T) ((AbstractC1978c) m36988a(str).invoke(null, versionedParcel));
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

    /* renamed from: a */
    public CharSequence m36991a(CharSequence charSequence, int i) {
        return !mo31385a(i) ? charSequence : mo31370g();
    }

    /* renamed from: a */
    public final Class m36990a(Class<? extends AbstractC1978c> cls) throws ClassNotFoundException {
        Class<?> cls2 = this.f2803c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f2803c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* renamed from: a */
    public String m36987a(String str, int i) {
        return !mo31385a(i) ? str : mo31365m();
    }

    /* renamed from: a */
    public final Method m36988a(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.f2801a.get(str);
        Method method2 = method;
        if (method == null) {
            System.currentTimeMillis();
            method2 = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.f2801a.put(str, method2);
        }
        return method2;
    }

    /* renamed from: a */
    public final <T, S extends Collection<T>> S m36985a(S s) {
        int i = mo31368i();
        if (i < 0) {
            return null;
        }
        if (i != 0) {
            int i2 = mo31368i();
            if (i < 0) {
                return null;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            for (int i3 = i; i3 > 0; i3--) {
                                s.add(mo31365m());
                            }
                        } else if (i2 == 5) {
                            while (i > 0) {
                                s.add(mo31364n());
                                i--;
                            }
                        }
                    } else {
                        for (int i4 = i; i4 > 0; i4--) {
                            s.add(m36961l());
                        }
                    }
                } else {
                    for (int i5 = i; i5 > 0; i5--) {
                        s.add(mo31366k());
                    }
                }
            } else {
                for (int i6 = i; i6 > 0; i6--) {
                    s.add(m36960o());
                }
            }
        }
        return s;
    }

    /* renamed from: a */
    public <T> List<T> m36983a(List<T> list, int i) {
        return !mo31385a(i) ? list : (List) m36985a((VersionedParcel) new ArrayList());
    }

    /* renamed from: a */
    public <T> Set<T> m36982a(Set<T> set, int i) {
        return !mo31385a(i) ? set : (Set) m36985a((VersionedParcel) new C0782b());
    }

    /* renamed from: a */
    public abstract void mo31387a();

    /* renamed from: a */
    public abstract void mo31386a(float f);

    /* renamed from: a */
    public abstract void mo31384a(long j);

    /* renamed from: a */
    public abstract void mo31383a(Bundle bundle);

    /* renamed from: a */
    public abstract void mo31382a(IBinder iBinder);

    /* renamed from: a */
    public abstract void mo31381a(Parcelable parcelable);

    /* renamed from: a */
    public void m36995a(AbstractC1978c cVar) {
        if (cVar == null) {
            mo31375b((String) null);
            return;
        }
        m36972b(cVar);
        VersionedParcel b = mo31377b();
        m36993a((VersionedParcel) cVar, b);
        b.mo31387a();
    }

    /* renamed from: a */
    public <T extends AbstractC1978c> void m36993a(T t, VersionedParcel versionedParcel) {
        try {
            m36969b(t.getClass()).invoke(null, t, versionedParcel);
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

    /* renamed from: a */
    public final void m36992a(Serializable serializable) {
        if (serializable == null) {
            mo31375b((String) null);
            return;
        }
        String name = serializable.getClass().getName();
        mo31375b(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            mo31378a(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException writing serializable object (name = " + name + ")", e);
        }
    }

    /* renamed from: a */
    public abstract void mo31380a(CharSequence charSequence);

    /* renamed from: a */
    public final <T> void m36984a(Collection<T> collection, int i) {
        mo31376b(i);
        m36967b(collection);
    }

    /* renamed from: a */
    public abstract void mo31379a(boolean z);

    /* renamed from: a */
    public void m36980a(boolean z, boolean z2) {
    }

    /* renamed from: a */
    public abstract void mo31378a(byte[] bArr);

    /* renamed from: a */
    public abstract boolean mo31385a(int i);

    /* renamed from: a */
    public boolean m36981a(boolean z, int i) {
        return !mo31385a(i) ? z : mo31373d();
    }

    /* renamed from: a */
    public byte[] m36979a(byte[] bArr, int i) {
        return !mo31385a(i) ? bArr : mo31371f();
    }

    /* renamed from: b */
    public abstract VersionedParcel mo31377b();

    /* renamed from: b */
    public final Method m36969b(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.f2802b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class a = m36990a((Class<? extends AbstractC1978c>) cls);
            System.currentTimeMillis();
            method2 = a.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f2802b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: b */
    public void m36978b(float f, int i) {
        mo31376b(i);
        mo31386a(f);
    }

    /* renamed from: b */
    public abstract void mo31376b(int i);

    /* renamed from: b */
    public void m36977b(int i, int i2) {
        mo31376b(i2);
        mo31374c(i);
    }

    /* renamed from: b */
    public void m36976b(long j, int i) {
        mo31376b(i);
        mo31384a(j);
    }

    /* renamed from: b */
    public void m36975b(Bundle bundle, int i) {
        mo31376b(i);
        mo31383a(bundle);
    }

    /* renamed from: b */
    public void m36974b(IBinder iBinder, int i) {
        mo31376b(i);
        mo31382a(iBinder);
    }

    /* renamed from: b */
    public void m36973b(Parcelable parcelable, int i) {
        mo31376b(i);
        mo31381a(parcelable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final void m36972b(AbstractC1978c cVar) {
        try {
            mo31375b(m36990a((Class<? extends AbstractC1978c>) cVar.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: b */
    public void m36971b(AbstractC1978c cVar, int i) {
        mo31376b(i);
        m36995a(cVar);
    }

    /* renamed from: b */
    public void m36970b(CharSequence charSequence, int i) {
        mo31376b(i);
        mo31380a(charSequence);
    }

    /* renamed from: b */
    public abstract void mo31375b(String str);

    /* renamed from: b */
    public void m36968b(String str, int i) {
        mo31376b(i);
        mo31375b(str);
    }

    /* renamed from: b */
    public final <T> void m36967b(Collection<T> collection) {
        if (collection == null) {
            mo31374c(-1);
            return;
        }
        int size = collection.size();
        mo31374c(size);
        if (size > 0) {
            int a = m36989a((VersionedParcel) collection.iterator().next());
            mo31374c(a);
            switch (a) {
                case 1:
                    for (T t : collection) {
                        m36995a(t);
                    }
                    return;
                case 2:
                    for (T t2 : collection) {
                        mo31381a(t2);
                    }
                    return;
                case 3:
                    for (T t3 : collection) {
                        m36992a(t3);
                    }
                    return;
                case 4:
                    for (T t4 : collection) {
                        mo31375b(t4);
                    }
                    return;
                case 5:
                    for (T t5 : collection) {
                        mo31382a(t5);
                    }
                    return;
                case 6:
                default:
                    return;
                case 7:
                    for (T t6 : collection) {
                        mo31374c(t6.intValue());
                    }
                    return;
                case 8:
                    for (T t7 : collection) {
                        mo31386a(t7.floatValue());
                    }
                    return;
            }
        }
    }

    /* renamed from: b */
    public <T> void m36966b(List<T> list, int i) {
        m36984a((Collection) list, i);
    }

    /* renamed from: b */
    public <T> void m36965b(Set<T> set, int i) {
        m36984a((Collection) set, i);
    }

    /* renamed from: b */
    public void m36964b(boolean z, int i) {
        mo31376b(i);
        mo31379a(z);
    }

    /* renamed from: b */
    public void m36963b(byte[] bArr, int i) {
        mo31376b(i);
        mo31378a(bArr);
    }

    /* renamed from: c */
    public abstract void mo31374c(int i);

    /* renamed from: c */
    public boolean m36962c() {
        return false;
    }

    /* renamed from: d */
    public abstract boolean mo31373d();

    /* renamed from: e */
    public abstract Bundle mo31372e();

    /* renamed from: f */
    public abstract byte[] mo31371f();

    /* renamed from: g */
    public abstract CharSequence mo31370g();

    /* renamed from: h */
    public abstract float mo31369h();

    /* renamed from: i */
    public abstract int mo31368i();

    /* renamed from: j */
    public abstract long mo31367j();

    /* renamed from: k */
    public abstract <T extends Parcelable> T mo31366k();

    /* renamed from: l */
    public Serializable m36961l() {
        String m = mo31365m();
        if (m == null) {
            return null;
        }
        try {
            return (Serializable) new C0552a(this, new ByteArrayInputStream(mo31371f())).readObject();
        } catch (IOException e) {
            throw new RuntimeException("VersionedParcelable encountered IOException reading a Serializable object (name = " + m + ")", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = " + m + ")", e2);
        }
    }

    /* renamed from: m */
    public abstract String mo31365m();

    /* renamed from: n */
    public abstract IBinder mo31364n();

    /* renamed from: o */
    public <T extends AbstractC1978c> T m36960o() {
        String m = mo31365m();
        if (m == null) {
            return null;
        }
        return (T) m36986a(m, mo31377b());
    }
}
