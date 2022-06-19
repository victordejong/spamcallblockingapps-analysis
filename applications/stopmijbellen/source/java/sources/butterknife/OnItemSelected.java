package butterknife;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes-dex2jar.jar:butterknife/OnItemSelected.class */
public @interface OnItemSelected {

    /* loaded from: classes-dex2jar.jar:butterknife/OnItemSelected$Callback.class */
    public enum Callback {
        ITEM_SELECTED,
        /* JADX INFO: Fake field, exist only in values array */
        NOTHING_SELECTED
    }
}
