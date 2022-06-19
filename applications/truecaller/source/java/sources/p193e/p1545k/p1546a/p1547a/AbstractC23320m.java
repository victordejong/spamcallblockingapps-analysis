package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.m */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/m.class */
public @interface AbstractC23320m {
    Class<? extends AbstractC23316k0<?>> generator();

    String property() default "@id";

    Class<? extends AbstractC23323n0> resolver() default C23330q0.class;

    Class<?> scope() default Object.class;
}
