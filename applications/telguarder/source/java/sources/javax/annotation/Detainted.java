package javax.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import javax.annotation.meta.When;
@Documented
@Retention(RetentionPolicy.RUNTIME)
@Untainted(when = When.ALWAYS)
/* loaded from: classes2-dex2jar.jar:javax/annotation/Detainted.class */
public @interface Detainted {
}
