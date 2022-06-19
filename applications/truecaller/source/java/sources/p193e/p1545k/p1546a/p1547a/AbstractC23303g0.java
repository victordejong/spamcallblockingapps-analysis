package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.g0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/g0.class */
public @interface AbstractC23303g0 {
    boolean enabled() default true;

    String prefix() default "";

    String suffix() default "";
}
