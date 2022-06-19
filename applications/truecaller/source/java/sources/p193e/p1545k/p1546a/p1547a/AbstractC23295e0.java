package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.e0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/e0.class */
public @interface AbstractC23295e0 {

    /* renamed from: e.k.a.a.e0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/e0$a.class */
    public enum EnumC23296a {
        PROPERTY,
        WRAPPER_OBJECT,
        WRAPPER_ARRAY,
        EXTERNAL_PROPERTY,
        EXISTING_PROPERTY
    }

    /* renamed from: e.k.a.a.e0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/e0$b.class */
    public enum EnumC23297b {
        NONE(null),
        CLASS("@class"),
        MINIMAL_CLASS("@c"),
        NAME("@type"),
        DEDUCTION(null),
        CUSTOM(null);
        

        /* renamed from: a */
        public final String f64454a;

        EnumC23297b(String str) {
            this.f64454a = str;
        }
    }

    @Deprecated
    /* renamed from: e.k.a.a.e0$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/e0$c.class */
    public static abstract class AbstractC23298c {
    }

    Class<?> defaultImpl() default AbstractC23295e0.class;

    EnumC23296a include() default EnumC23296a.PROPERTY;

    String property() default "";

    EnumC23297b use();

    boolean visible() default false;
}
