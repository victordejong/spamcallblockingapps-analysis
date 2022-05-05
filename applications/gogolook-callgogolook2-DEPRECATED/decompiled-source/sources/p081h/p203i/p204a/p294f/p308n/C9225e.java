package p081h.p203i.p204a.p294f.p308n;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.DrawableUtils;
import java.lang.reflect.Method;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/e.class */
public class C9225e {

    /* renamed from: a */
    public static Method f21139a;

    /* renamed from: b */
    public static boolean f21140b;

    /* renamed from: a */
    public static boolean m15674a(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        return m15673b(drawableContainer, constantState);
    }

    /* renamed from: b */
    public static boolean m15673b(DrawableContainer drawableContainer, Drawable.ConstantState constantState) {
        if (!f21140b) {
            try {
                f21139a = DrawableContainer.class.getDeclaredMethod("setConstantState", DrawableContainer.DrawableContainerState.class);
                f21139a.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.e(DrawableUtils.TAG, "Could not fetch setConstantState(). Oh well.");
            }
            f21140b = true;
        }
        Method method = f21139a;
        if (method == null) {
            return false;
        }
        try {
            method.invoke(drawableContainer, constantState);
            return true;
        } catch (Exception e2) {
            Log.e(DrawableUtils.TAG, "Could not invoke setConstantState(). Oh well.");
            return false;
        }
    }
}
