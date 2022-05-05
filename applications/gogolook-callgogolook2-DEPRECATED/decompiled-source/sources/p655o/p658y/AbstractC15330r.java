package p655o.p658y;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: o.y.r */
/* loaded from: classes3-dex2jar.jar:o/y/r.class */
public @interface AbstractC15330r {
    boolean encoded() default false;

    String value();
}
