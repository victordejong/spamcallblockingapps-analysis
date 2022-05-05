package butterknife;

import androidx.annotation.StringRes;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:butterknife/BindString.class */
public @interface BindString {
    @StringRes
    int value();
}
