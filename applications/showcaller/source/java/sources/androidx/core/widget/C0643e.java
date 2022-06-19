package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* renamed from: androidx.core.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/e.class */
public final class C0643e {

    /* renamed from: a */
    private static Field f3098a;

    /* renamed from: b */
    private static boolean f3099b;

    /* renamed from: a */
    public static Drawable m33107a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f3099b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f3098a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f3099b = true;
        }
        Field field = f3098a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
            f3098a = null;
            return null;
        }
    }

    /* renamed from: b */
    public static ColorStateList m33106b(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (!(compoundButton instanceof AbstractC0654m)) {
            return null;
        }
        return ((AbstractC0654m) compoundButton).getSupportButtonTintList();
    }

    /* renamed from: c */
    public static void m33105c(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (!(compoundButton instanceof AbstractC0654m)) {
        } else {
            ((AbstractC0654m) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: d */
    public static void m33104d(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (!(compoundButton instanceof AbstractC0654m)) {
        } else {
            ((AbstractC0654m) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
