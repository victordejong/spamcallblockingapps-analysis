package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.c0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/c0.class */
public @interface AbstractC23290c0 {

    /* renamed from: e.k.a.a.c0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/c0$a.class */
    public @interface AbstractC23291a {
        String name() default "";

        String[] names() default {};

        Class<?> value();
    }

    AbstractC23291a[] value();
}
