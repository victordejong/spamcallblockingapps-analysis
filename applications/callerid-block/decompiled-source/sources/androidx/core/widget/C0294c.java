package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* renamed from: androidx.core.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/c.class */
public final class C0294c {

    /* renamed from: a */
    private static Field f1736a;

    /* renamed from: b */
    private static boolean f1737b;

    /* renamed from: a */
    public static Drawable m13418a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f1737b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f1736a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f1737b = true;
        }
        Field field = f1736a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
            f1736a = null;
            return null;
        }
    }

    /* renamed from: b */
    public static ColorStateList m13417b(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (compoundButton instanceof AbstractC0301j) {
            return ((AbstractC0301j) compoundButton).getSupportButtonTintList();
        }
        return null;
    }

    /* renamed from: c */
    public static void m13416c(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof AbstractC0301j) {
            ((AbstractC0301j) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: d */
    public static void m13415d(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof AbstractC0301j) {
            ((AbstractC0301j) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
