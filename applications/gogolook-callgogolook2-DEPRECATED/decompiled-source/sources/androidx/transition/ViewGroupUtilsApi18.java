package androidx.transition;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
@RequiresApi(18)
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewGroupUtilsApi18.class */
public class ViewGroupUtilsApi18 {
    public static final String TAG = "ViewUtilsApi18";
    public static Method sSuppressLayoutMethod;
    public static boolean sSuppressLayoutMethodFetched;

    public static void fetchSuppressLayoutMethod() {
        if (!sSuppressLayoutMethodFetched) {
            try {
                sSuppressLayoutMethod = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
                sSuppressLayoutMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            sSuppressLayoutMethodFetched = true;
        }
    }

    public static void suppressLayout(@NonNull ViewGroup viewGroup, boolean z) {
        fetchSuppressLayoutMethod();
        Method method = sSuppressLayoutMethod;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException | InvocationTargetException e) {
            }
        }
    }
}
