package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.w */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/w.class */
public @interface AbstractC23339w {

    /* renamed from: e.k.a.a.w$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/w$a.class */
    public enum EnumC23340a {
        AUTO,
        READ_ONLY,
        WRITE_ONLY,
        READ_WRITE
    }

    EnumC23340a access() default EnumC23340a.AUTO;

    String defaultValue() default "";

    int index() default -1;

    String namespace() default "";

    boolean required() default false;

    String value() default "";
}
