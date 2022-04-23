package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static Field f2059a;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f2060b;

    private c() {
    }

    public static ColorStateList a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (compoundButton instanceof i) {
            return ((i) compoundButton).getSupportButtonTintList();
        }
        return null;
    }

    public static void a(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof i) {
            ((i) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    public static void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof i) {
            ((i) compoundButton).setSupportButtonTintMode(mode);
        }
    }

    public static Drawable b(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f2060b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f2059a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f2060b = true;
        }
        Field field = f2059a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            f2059a = null;
            return null;
        }
    }
}
