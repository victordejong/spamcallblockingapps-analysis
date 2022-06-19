package p196p0;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* renamed from: p0.c */
/* loaded from: classes-dex2jar.jar:p0/c.class */
public final class C3985c {

    /* renamed from: a */
    public static Field f12535a;

    /* renamed from: b */
    public static boolean f12536b;

    /* renamed from: a */
    public static Drawable m1574a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f12536b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f12535a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f12536b = true;
        }
        Field field = f12535a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
            f12535a = null;
            return null;
        }
    }
}
