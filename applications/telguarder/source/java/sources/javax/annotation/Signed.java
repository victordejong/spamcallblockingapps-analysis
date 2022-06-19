package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.When;
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Nonnegative(when = When.UNKNOWN)
/* loaded from: classes2-dex2jar.jar:javax/annotation/Signed.class */
public @interface Signed {
}
