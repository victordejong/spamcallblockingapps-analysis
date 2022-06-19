package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Set;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.s */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/s.class */
public @interface AbstractC23334s {

    /* renamed from: e.k.a.a.s$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/s$a.class */
    public static class C23335a implements Object<AbstractC23334s> {

        /* renamed from: b */
        public static final C23335a f64542b = new C23335a(null);

        /* renamed from: a */
        public final Set<String> f64543a;

        public C23335a(Set<String> set) {
            this.f64543a = set;
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (obj.getClass() == C23335a.class) {
                Set<String> set = this.f64543a;
                Set<String> set2 = ((C23335a) obj).f64543a;
                if (set == null ? set2 == null : set.equals(set2)) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        }

        @Override // java.lang.Object
        public int hashCode() {
            Set<String> set = this.f64543a;
            return set == null ? 0 : set.size();
        }

        @Override // java.lang.Object
        public String toString() {
            return String.format("JsonIncludeProperties.Value(included=%s)", this.f64543a);
        }
    }

    String[] value() default {};
}
