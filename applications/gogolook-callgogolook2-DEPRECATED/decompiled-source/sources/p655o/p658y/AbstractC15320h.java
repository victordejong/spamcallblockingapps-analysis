package p655o.p658y;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: o.y.h */
/* loaded from: classes3-dex2jar.jar:o/y/h.class */
public @interface AbstractC15320h {
    boolean hasBody() default false;

    String method();

    String path() default "";
}
