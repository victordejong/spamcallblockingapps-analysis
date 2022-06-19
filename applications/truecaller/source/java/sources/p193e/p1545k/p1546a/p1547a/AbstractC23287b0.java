package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.b0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/b0.class */
public @interface AbstractC23287b0 {

    /* renamed from: e.k.a.a.b0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/b0$a.class */
    public static class C23288a implements Object<AbstractC23287b0> {

        /* renamed from: c */
        public static final C23288a f64438c;

        /* renamed from: a */
        public final EnumC23310j0 f64439a;

        /* renamed from: b */
        public final EnumC23310j0 f64440b;

        static {
            EnumC23310j0 enumC23310j0 = EnumC23310j0.DEFAULT;
            f64438c = new C23288a(enumC23310j0, enumC23310j0);
        }

        public C23288a(EnumC23310j0 enumC23310j0, EnumC23310j0 enumC23310j02) {
            this.f64439a = enumC23310j0;
            this.f64440b = enumC23310j02;
        }

        /* renamed from: a */
        public EnumC23310j0 m7291a() {
            EnumC23310j0 enumC23310j0 = this.f64440b;
            EnumC23310j0 enumC23310j02 = enumC23310j0;
            if (enumC23310j0 == EnumC23310j0.DEFAULT) {
                enumC23310j02 = null;
            }
            return enumC23310j02;
        }

        /* renamed from: b */
        public EnumC23310j0 m7290b() {
            EnumC23310j0 enumC23310j0 = this.f64439a;
            EnumC23310j0 enumC23310j02 = enumC23310j0;
            if (enumC23310j0 == EnumC23310j0.DEFAULT) {
                enumC23310j02 = null;
            }
            return enumC23310j02;
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
            C23288a c23288a = (C23288a) obj;
            if (c23288a.f64439a != this.f64439a || c23288a.f64440b != this.f64440b) {
                z = false;
            }
            return z;
        }

        @Override // java.lang.Object
        public int hashCode() {
            return this.f64439a.ordinal() + (this.f64440b.ordinal() << 2);
        }

        public Object readResolve() {
            EnumC23310j0 enumC23310j0 = this.f64439a;
            EnumC23310j0 enumC23310j02 = this.f64440b;
            EnumC23310j0 enumC23310j03 = EnumC23310j0.DEFAULT;
            return enumC23310j0 == enumC23310j03 && enumC23310j02 == enumC23310j03 ? f64438c : this;
        }

        @Override // java.lang.Object
        public String toString() {
            return String.format("JsonSetter.Value(valueNulls=%s,contentNulls=%s)", this.f64439a, this.f64440b);
        }
    }

    EnumC23310j0 contentNulls() default EnumC23310j0.DEFAULT;

    EnumC23310j0 nulls() default EnumC23310j0.DEFAULT;

    String value() default "";
}
