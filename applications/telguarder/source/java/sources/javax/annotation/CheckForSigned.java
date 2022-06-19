package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.When;
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Nonnegative(when = When.MAYBE)
/* loaded from: classes2-dex2jar.jar:javax/annotation/CheckForSigned.class */
public @interface CheckForSigned {
}
