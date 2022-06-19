package butterknife;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:butterknife/OnTextChanged.class */
public @interface OnTextChanged {

    /* loaded from: classes-dex2jar.jar:butterknife/OnTextChanged$Callback.class */
    public enum Callback {
        TEXT_CHANGED,
        /* JADX INFO: Fake field, exist only in values array */
        BEFORE_TEXT_CHANGED,
        /* JADX INFO: Fake field, exist only in values array */
        AFTER_TEXT_CHANGED
    }
}
