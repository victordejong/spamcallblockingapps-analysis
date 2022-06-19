package butterknife;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes-dex2jar.jar:butterknife/OnPageChange.class */
public @interface OnPageChange {

    /* loaded from: classes-dex2jar.jar:butterknife/OnPageChange$Callback.class */
    public enum Callback {
        PAGE_SELECTED,
        /* JADX INFO: Fake field, exist only in values array */
        PAGE_SCROLLED,
        /* JADX INFO: Fake field, exist only in values array */
        PAGE_SCROLL_STATE_CHANGED
    }
}
