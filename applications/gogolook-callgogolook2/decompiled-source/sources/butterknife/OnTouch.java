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
@ListenerClass(method = {@ListenerMethod(defaultReturn = "true", name = "onTouch", parameters = {ExploreByTouchHelper.DEFAULT_CLASS_NAME, "android.view.MotionEvent"}, returnType = "boolean")}, setter = "setOnTouchListener", targetType = ExploreByTouchHelper.DEFAULT_CLASS_NAME, type = "android.view.View.OnTouchListener")
/* loaded from: classes-dex2jar.jar:butterknife/OnTouch.class */
public @interface OnTouch {
    @IdRes
    int[] value() default {-1};
}
