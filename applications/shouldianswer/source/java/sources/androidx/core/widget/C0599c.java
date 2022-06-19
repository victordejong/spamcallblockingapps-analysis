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
public final class C0599c {

    /* renamed from: a */
    private static Field f2028a;

    /* renamed from: b */
    private static boolean f2029b;

    /* renamed from: a */
    public static Drawable m5996a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f2029b) {
            try {
                f2028a = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f2028a.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f2029b = true;
        }
        Field field = f2028a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
            f2028a = null;
            return null;
        }
    }

    /* renamed from: a */
    public static void m5995a(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (!(compoundButton instanceof AbstractC0607j)) {
        } else {
            ((AbstractC0607j) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m5994a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (!(compoundButton instanceof AbstractC0607j)) {
        } else {
            ((AbstractC0607j) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
