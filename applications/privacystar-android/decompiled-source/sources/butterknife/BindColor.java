package butterknife;

import android.support.annotation.ColorRes;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:butterknife/BindColor.class */
public @interface BindColor {
    @ColorRes
    int value();
}
