package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.METHOD, ElementType.FIELD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/b.class */
public @interface AbstractC23285b {

    /* renamed from: e.k.a.a.b$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/b$a.class */
    public static class C23286a implements Object<AbstractC23285b> {

        /* renamed from: c */
        public static final C23286a f64435c = new C23286a(null, null);

        /* renamed from: a */
        public final Object f64436a;

        /* renamed from: b */
        public final Boolean f64437b;

        public C23286a(Object obj, Boolean bool) {
            this.f64436a = obj;
            this.f64437b = bool;
        }

        /* renamed from: a */
        public static C23286a m7292a(Object obj, Boolean bool) {
            Object obj2 = obj;
            if ("".equals(obj)) {
                obj2 = null;
            }
            return obj2 == null && bool == null ? f64435c : new C23286a(obj2, bool);
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != C23286a.class) {
                return false;
            }
            C23286a c23286a = (C23286a) obj;
            Boolean bool = this.f64437b;
            Boolean bool2 = c23286a.f64437b;
            if (!(bool == null ? bool2 == null : bool.equals(bool2))) {
                return false;
            }
            Object obj2 = this.f64436a;
            if (obj2 != null) {
                return obj2.equals(c23286a.f64436a);
            }
            return c23286a.f64436a == null;
        }

        @Override // java.lang.Object
        public int hashCode() {
            Object obj = this.f64436a;
            int i = 1;
            if (obj != null) {
                i = 1 + obj.hashCode();
            }
            Boolean bool = this.f64437b;
            int i2 = i;
            if (bool != null) {
                i2 = i + bool.hashCode();
            }
            return i2;
        }

        @Override // java.lang.Object
        public String toString() {
            return String.format("JacksonInject.Value(id=%s,useInput=%s)", this.f64436a, this.f64437b);
        }
    }

    EnumC23325o0 useInput() default EnumC23325o0.DEFAULT;

    String value() default "";
}
