package p081h.p203i.p401g;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Field;
/* renamed from: h.i.g.w */
/* loaded from: classes2-dex2jar.jar:h/i/g/w.class */
public final class C10477w implements Serializable {

    /* renamed from: a */
    public final Class<?> f23805a;

    /* renamed from: b */
    public final String f23806b;

    /* renamed from: c */
    public final byte[] f23807c;

    public C10477w(AbstractC10437l0 l0Var) {
        this.f23805a = l0Var.getClass();
        this.f23806b = this.f23805a.getName();
        this.f23807c = l0Var.mo11838i();
    }

    @Deprecated
    /* renamed from: a */
    public final Object m11709a() throws ObjectStreamException {
        try {
            Field declaredField = m11708b().getDeclaredField("defaultInstance");
            declaredField.setAccessible(true);
            return ((AbstractC10437l0) declaredField.get(null)).mo11827e().mo11836a(this.f23807c).mo11825E();
        } catch (C10222a0 e) {
            throw new RuntimeException("Unable to understand proto buffer", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Unable to find proto buffer class: " + this.f23806b, e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Unable to call parsePartialFrom", e3);
        } catch (NoSuchFieldException e4) {
            throw new RuntimeException("Unable to find defaultInstance in " + this.f23806b, e4);
        } catch (SecurityException e5) {
            throw new RuntimeException("Unable to call defaultInstance in " + this.f23806b, e5);
        }
    }

    /* renamed from: b */
    public final Class<?> m11708b() throws ClassNotFoundException {
        Class<?> cls = this.f23805a;
        if (cls == null) {
            cls = Class.forName(this.f23806b);
        }
        return cls;
    }

    public Object readResolve() throws ObjectStreamException {
        try {
            Field declaredField = m11708b().getDeclaredField("DEFAULT_INSTANCE");
            declaredField.setAccessible(true);
            return ((AbstractC10437l0) declaredField.get(null)).mo11827e().mo11836a(this.f23807c).mo11825E();
        } catch (C10222a0 e) {
            throw new RuntimeException("Unable to understand proto buffer", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Unable to find proto buffer class: " + this.f23806b, e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Unable to call parsePartialFrom", e3);
        } catch (NoSuchFieldException e4) {
            return m11709a();
        } catch (SecurityException e5) {
            throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.f23806b, e5);
        }
    }
}
