package p000;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;
/* renamed from: cc */
/* loaded from: classes-dex2jar.jar:cc.class */
public final class C0307cc {

    /* renamed from: a */
    public static Field f2342a;

    /* renamed from: b */
    public static boolean f2343b;

    /* renamed from: a */
    public static Drawable m5351a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f2343b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f2342a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f2343b = true;
        }
        Field field = f2342a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
            f2342a = null;
            return null;
        }
    }

    /* renamed from: b */
    public static ColorStateList m5350b(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (!(compoundButton instanceof jc)) {
            return null;
        }
        return ((jc) compoundButton).getSupportButtonTintList();
    }

    /* renamed from: c */
    public static void m5349c(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (!(compoundButton instanceof jc)) {
        } else {
            ((jc) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: d */
    public static void m5348d(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (!(compoundButton instanceof jc)) {
        } else {
            ((jc) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
