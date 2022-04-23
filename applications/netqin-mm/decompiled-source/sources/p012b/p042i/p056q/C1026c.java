package p012b.p042i.p056q;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* renamed from: b.i.q.c */
/* loaded from: classes-dex2jar.jar:b/i/q/c.class */
public final class C1026c {

    /* renamed from: a */
    public static Field f4313a;

    /* renamed from: b */
    public static boolean f4314b;

    /* renamed from: a */
    public static Drawable m35119a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f4314b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f4313a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f4314b = true;
        }
        Field field = f4313a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
            f4313a = null;
            return null;
        }
    }

    /* renamed from: a */
    public static void m35118a(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof AbstractC1034j) {
            ((AbstractC1034j) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m35117a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof AbstractC1034j) {
            ((AbstractC1034j) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
