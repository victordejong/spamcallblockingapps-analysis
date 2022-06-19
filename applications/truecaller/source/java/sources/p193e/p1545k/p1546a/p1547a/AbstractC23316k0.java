package p193e.p1545k.p1546a.p1547a;

import java.io.Serializable;
/* renamed from: e.k.a.a.k0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/k0.class */
public abstract class AbstractC23316k0<T> implements Serializable {

    /* renamed from: e.k.a.a.k0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/k0$a.class */
    public static final class C23317a implements Serializable {

        /* renamed from: a */
        public final Class<?> f64505a;

        /* renamed from: b */
        public final Class<?> f64506b;

        /* renamed from: c */
        public final Object f64507c;

        /* renamed from: d */
        public final int f64508d;

        public C23317a(Class<?> cls, Class<?> cls2, Object obj) {
            this.f64505a = cls;
            this.f64506b = cls2;
            this.f64507c = obj;
            int hashCode = cls.getName().hashCode() + obj.hashCode();
            this.f64508d = cls2 != null ? hashCode ^ cls2.getName().hashCode() : hashCode;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != C23317a.class) {
                return false;
            }
            C23317a c23317a = (C23317a) obj;
            if (!c23317a.f64507c.equals(this.f64507c) || c23317a.f64505a != this.f64505a || c23317a.f64506b != this.f64506b) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.f64508d;
        }

        public String toString() {
            Object obj = this.f64507c;
            Class<?> cls = this.f64505a;
            String str = "NONE";
            String name = cls == null ? "NONE" : cls.getName();
            Class<?> cls2 = this.f64506b;
            if (cls2 != null) {
                str = cls2.getName();
            }
            return String.format("[ObjectId: key=%s, type=%s, scope=%s]", obj, name, str);
        }
    }

    /* renamed from: a */
    public abstract boolean mo6067a(AbstractC23316k0<?> abstractC23316k0);

    /* renamed from: b */
    public abstract AbstractC23316k0<T> mo6066b(Class<?> cls);

    /* renamed from: c */
    public abstract T mo6065c(Object obj);

    /* renamed from: d */
    public abstract Class<?> mo7281d();

    /* renamed from: e */
    public abstract C23317a mo6064e(Object obj);

    /* renamed from: f */
    public abstract AbstractC23316k0<T> mo6063f(Object obj);
}
