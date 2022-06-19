package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.p014c.C0374a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel.class */
public abstract class VersionedParcel {

    /* renamed from: a */
    protected final C0374a<String, Method> f3397a;

    /* renamed from: b */
    protected final C0374a<String, Method> f3398b;

    /* renamed from: c */
    protected final C0374a<String, Class> f3399c;

    /* loaded from: classes-dex2jar.jar:androidx/versionedparcelable/VersionedParcel$ParcelException.class */
    public static class ParcelException extends RuntimeException {
    }

    public VersionedParcel(C0374a<String, Method> c0374a, C0374a<String, Method> c0374a2, C0374a<String, Class> c0374a3) {
        this.f3397a = c0374a;
        this.f3398b = c0374a2;
        this.f3399c = c0374a3;
    }

    /* renamed from: a */
    private Method m4368a(Class cls) {
        Method method = this.f3398b.get(cls.getName());
        Method method2 = method;
        if (method == null) {
            Class m4357b = m4357b(cls);
            System.currentTimeMillis();
            method2 = m4357b.getDeclaredMethod("write", cls, VersionedParcel.class);
            this.f3398b.put(cls.getName(), method2);
        }
        return method2;
    }

    /* renamed from: b */
    private Class m4357b(Class<? extends AbstractC1085b> cls) {
        Class<?> cls2 = this.f3399c.get(cls.getName());
        Class<?> cls3 = cls2;
        if (cls2 == null) {
            cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
            this.f3399c.put(cls.getName(), cls3);
        }
        return cls3;
    }

    /* renamed from: b */
    private Method m4356b(String str) {
        Method method = this.f3397a.get(str);
        Method method2 = method;
        if (method == null) {
            System.currentTimeMillis();
            method2 = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            this.f3397a.put(str, method2);
        }
        return method2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m4360b(AbstractC1085b abstractC1085b) {
        try {
            mo4348a(m4357b((Class<? extends AbstractC1085b>) abstractC1085b.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(abstractC1085b.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* renamed from: a */
    protected <T extends AbstractC1085b> T m4366a(String str, VersionedParcel versionedParcel) {
        try {
            return (T) m4356b(str).invoke(null, versionedParcel);
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
    protected abstract void mo4351a(int i);

    /* renamed from: a */
    public void m4374a(int i, int i2) {
        mo4342c(i2);
        mo4351a(i);
    }

    /* renamed from: a */
    protected abstract void mo4350a(Parcelable parcelable);

    /* renamed from: a */
    public void m4373a(Parcelable parcelable, int i) {
        mo4342c(i);
        mo4350a(parcelable);
    }

    /* renamed from: a */
    public void m4372a(AbstractC1085b abstractC1085b) {
        if (abstractC1085b == null) {
            mo4348a((String) null);
            return;
        }
        m4360b(abstractC1085b);
        VersionedParcel mo4343c = mo4343c();
        m4370a((VersionedParcel) abstractC1085b, mo4343c);
        mo4343c.mo4345b();
    }

    /* renamed from: a */
    public void m4371a(AbstractC1085b abstractC1085b, int i) {
        mo4342c(i);
        m4372a(abstractC1085b);
    }

    /* renamed from: a */
    protected <T extends AbstractC1085b> void m4370a(T t, VersionedParcel versionedParcel) {
        try {
            m4368a(t.getClass()).invoke(null, t, versionedParcel);
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
    protected abstract void mo4349a(CharSequence charSequence);

    /* renamed from: a */
    public void m4369a(CharSequence charSequence, int i) {
        mo4342c(i);
        mo4349a(charSequence);
    }

    /* renamed from: a */
    protected abstract void mo4348a(String str);

    /* renamed from: a */
    public void m4367a(String str, int i) {
        mo4342c(i);
        mo4348a(str);
    }

    /* renamed from: a */
    protected abstract void mo4347a(boolean z);

    /* renamed from: a */
    public void m4365a(boolean z, int i) {
        mo4342c(i);
        mo4347a(z);
    }

    /* renamed from: a */
    public void m4364a(boolean z, boolean z2) {
    }

    /* renamed from: a */
    protected abstract void mo4346a(byte[] bArr);

    /* renamed from: a */
    public void m4363a(byte[] bArr, int i) {
        mo4342c(i);
        mo4346a(bArr);
    }

    /* renamed from: a */
    public boolean m4375a() {
        return false;
    }

    /* renamed from: b */
    public int m4362b(int i, int i2) {
        return !mo4344b(i2) ? i : mo4341d();
    }

    /* renamed from: b */
    public <T extends Parcelable> T m4361b(T t, int i) {
        return !mo4344b(i) ? t : (T) mo4337h();
    }

    /* renamed from: b */
    public <T extends AbstractC1085b> T m4359b(T t, int i) {
        return !mo4344b(i) ? t : (T) m4352j();
    }

    /* renamed from: b */
    public CharSequence m4358b(CharSequence charSequence, int i) {
        return !mo4344b(i) ? charSequence : mo4338g();
    }

    /* renamed from: b */
    public String m4355b(String str, int i) {
        return !mo4344b(i) ? str : mo4340e();
    }

    /* renamed from: b */
    protected abstract void mo4345b();

    /* renamed from: b */
    protected abstract boolean mo4344b(int i);

    /* renamed from: b */
    public boolean m4354b(boolean z, int i) {
        return !mo4344b(i) ? z : mo4336i();
    }

    /* renamed from: b */
    public byte[] m4353b(byte[] bArr, int i) {
        return !mo4344b(i) ? bArr : mo4339f();
    }

    /* renamed from: c */
    protected abstract VersionedParcel mo4343c();

    /* renamed from: c */
    protected abstract void mo4342c(int i);

    /* renamed from: d */
    protected abstract int mo4341d();

    /* renamed from: e */
    protected abstract String mo4340e();

    /* renamed from: f */
    protected abstract byte[] mo4339f();

    /* renamed from: g */
    protected abstract CharSequence mo4338g();

    /* renamed from: h */
    protected abstract <T extends Parcelable> T mo4337h();

    /* renamed from: i */
    protected abstract boolean mo4336i();

    /* renamed from: j */
    public <T extends AbstractC1085b> T m4352j() {
        String mo4340e = mo4340e();
        if (mo4340e == null) {
            return null;
        }
        return (T) m4366a(mo4340e, mo4343c());
    }
}
