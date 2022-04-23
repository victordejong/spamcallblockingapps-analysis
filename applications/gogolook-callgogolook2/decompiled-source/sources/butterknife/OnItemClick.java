package butterknife;

import androidx.annotation.IdRes;
import androidx.customview.widget.ExploreByTouchHelper;
import butterknife.internal.ListenerClass;
import butterknife.internal.ListenerMethod;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@ListenerClass(method = {@ListenerMethod(name = "onItemClick", parameters = {"android.widget.AdapterView<?>", ExploreByTouchHelper.DEFAULT_CLASS_NAME, "int", "long"})}, setter = "setOnItemClickListener", targetType = "android.widget.AdapterView<?>", type = "android.widget.AdapterView.OnItemClickListener")
/* loaded from: classes-dex2jar.jar:butterknife/OnItemClick.class */
public @interface OnItemClick {
    @IdRes
    int[] value() default {-1};
}
