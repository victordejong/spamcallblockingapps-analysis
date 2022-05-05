package butterknife;

import android.support.annotation.RestrictTo;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:butterknife/BindFont.class */
public @interface BindFont {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes-dex2jar.jar:butterknife/BindFont$TypefaceStyle.class */
    public @interface TypefaceStyle {
    }

    @TypefaceStyle
    int style() default 0;

    int value();
}
