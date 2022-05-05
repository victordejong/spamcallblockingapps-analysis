package dagger;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:dagger/Component.class */
public @interface Component {

    @Target({ElementType.TYPE})
    @Documented
    /* loaded from: classes2-dex2jar.jar:dagger/Component$Builder.class */
    public @interface Builder {
    }

    Class<?>[] dependencies() default {};

    Class<?>[] modules() default {};
}
