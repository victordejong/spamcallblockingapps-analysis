package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.TYPE, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.r */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/r.class */
public @interface AbstractC23331r {

    /* renamed from: e.k.a.a.r$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/r$a.class */
    public enum EnumC23332a {
        ALWAYS,
        NON_NULL,
        NON_ABSENT,
        NON_EMPTY,
        NON_DEFAULT,
        CUSTOM,
        USE_DEFAULTS
    }

    /* renamed from: e.k.a.a.r$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/r$b.class */
    public static class C23333b implements Object<AbstractC23331r> {

        /* renamed from: e */
        public static final C23333b f64537e;

        /* renamed from: a */
        public final EnumC23332a f64538a;

        /* renamed from: b */
        public final EnumC23332a f64539b;

        /* renamed from: c */
        public final Class<?> f64540c;

        /* renamed from: d */
        public final Class<?> f64541d;

        static {
            EnumC23332a enumC23332a = EnumC23332a.USE_DEFAULTS;
            f64537e = new C23333b(enumC23332a, enumC23332a, null, null);
        }

        public C23333b(EnumC23332a enumC23332a, EnumC23332a enumC23332a2, Class<?> cls, Class<?> cls2) {
            EnumC23332a enumC23332a3 = EnumC23332a.USE_DEFAULTS;
            this.f64538a = enumC23332a == null ? enumC23332a3 : enumC23332a;
            this.f64539b = enumC23332a2 == null ? enumC23332a3 : enumC23332a2;
            this.f64540c = cls == Void.class ? null : cls;
            this.f64541d = cls2 == Void.class ? null : cls2;
        }

        /* renamed from: a */
        public C23333b m7270a(C23333b c23333b) {
            EnumC23332a enumC23332a = EnumC23332a.USE_DEFAULTS;
            if (c23333b != null && c23333b != f64537e) {
                EnumC23332a enumC23332a2 = c23333b.f64538a;
                EnumC23332a enumC23332a3 = c23333b.f64539b;
                Class<?> cls = c23333b.f64540c;
                Class<?> cls2 = c23333b.f64541d;
                EnumC23332a enumC23332a4 = this.f64538a;
                boolean z = (enumC23332a2 == enumC23332a4 || enumC23332a2 == enumC23332a) ? false : true;
                EnumC23332a enumC23332a5 = this.f64539b;
                boolean z2 = (enumC23332a3 == enumC23332a5 || enumC23332a3 == enumC23332a) ? false : true;
                Class<?> cls3 = this.f64540c;
                boolean z3 = true;
                if (cls == cls3) {
                    z3 = cls2 != cls3;
                }
                if (z) {
                    return z2 ? new C23333b(enumC23332a2, enumC23332a3, cls, cls2) : new C23333b(enumC23332a2, enumC23332a5, cls, cls2);
                } else if (z2) {
                    return new C23333b(enumC23332a4, enumC23332a3, cls, cls2);
                } else {
                    if (z3) {
                        return new C23333b(enumC23332a4, enumC23332a5, cls, cls2);
                    }
                }
            }
            return this;
        }

        /* renamed from: b */
        public C23333b m7269b(EnumC23332a enumC23332a) {
            return enumC23332a == this.f64538a ? this : new C23333b(enumC23332a, this.f64539b, this.f64540c, this.f64541d);
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            C23333b c23333b = (C23333b) obj;
            if (c23333b.f64538a != this.f64538a || c23333b.f64539b != this.f64539b || c23333b.f64540c != this.f64540c || c23333b.f64541d != this.f64541d) {
                z = false;
            }
            return z;
        }

        @Override // java.lang.Object
        public int hashCode() {
            return this.f64539b.hashCode() + (this.f64538a.hashCode() << 2);
        }

        public Object readResolve() {
            EnumC23332a enumC23332a = this.f64538a;
            EnumC23332a enumC23332a2 = EnumC23332a.USE_DEFAULTS;
            return (enumC23332a == enumC23332a2 && this.f64539b == enumC23332a2 && this.f64540c == null && this.f64541d == null) ? f64537e : this;
        }

        @Override // java.lang.Object
        public String toString() {
            StringBuilder m8554x = C22128a.m8554x(80, "JsonInclude.Value(value=");
            m8554x.append(this.f64538a);
            m8554x.append(",content=");
            m8554x.append(this.f64539b);
            if (this.f64540c != null) {
                m8554x.append(",valueFilter=");
                C22128a.m8545z0(this.f64540c, m8554x, ".class");
            }
            if (this.f64541d != null) {
                m8554x.append(",contentFilter=");
                C22128a.m8545z0(this.f64541d, m8554x, ".class");
            }
            m8554x.append(')');
            return m8554x.toString();
        }
    }

    EnumC23332a content() default EnumC23332a.ALWAYS;

    Class<?> contentFilter() default Void.class;

    EnumC23332a value() default EnumC23332a.ALWAYS;

    Class<?> valueFilter() default Void.class;
}
