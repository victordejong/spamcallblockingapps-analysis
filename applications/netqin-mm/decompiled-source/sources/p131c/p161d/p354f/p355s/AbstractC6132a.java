package p131c.p161d.p354f.p355s;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: c.d.f.s.a */
/* loaded from: classes-dex2jar.jar:c/d/f/s/a.class */
public @interface AbstractC6132a {
    boolean deserialize() default true;

    boolean serialize() default true;
}
