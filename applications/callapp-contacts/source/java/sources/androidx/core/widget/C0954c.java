package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* renamed from: androidx.core.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/c.class */
public final class C0954c {

    /* renamed from: a */
    private static Field f3860a;

    /* renamed from: b */
    private static boolean f3861b;

    private C0954c() {
    }

    /* renamed from: a */
    public static ColorStateList m43983a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (!(compoundButton instanceof AbstractC0961i)) {
            return null;
        }
        return ((AbstractC0961i) compoundButton).getSupportButtonTintList();
    }

    /* renamed from: a */
    public static void m43982a(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (!(compoundButton instanceof AbstractC0961i)) {
        } else {
            ((AbstractC0961i) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m43981a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (!(compoundButton instanceof AbstractC0961i)) {
        } else {
            ((AbstractC0961i) compoundButton).setSupportButtonTintMode(mode);
        }
    }

    /* renamed from: b */
    public static Drawable m43980b(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f3861b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f3860a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f3861b = true;
        }
        Field field = f3860a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            f3860a = null;
            return null;
        }
    }
}
