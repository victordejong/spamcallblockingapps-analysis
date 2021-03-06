package permissions.dispatcher;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes3-dex2jar.jar:permissions/dispatcher/OnNeverAskAgain.class */
public @interface OnNeverAskAgain {
    String[] value();
}
