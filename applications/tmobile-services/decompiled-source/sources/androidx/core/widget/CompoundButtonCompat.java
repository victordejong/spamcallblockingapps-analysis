package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/CompoundButtonCompat.class */
public final class CompoundButtonCompat {

    /* renamed from: a */
    private static Field f3389a;

    /* renamed from: b */
    private static boolean f3390b;

    private CompoundButtonCompat() {
    }

    @Nullable
    /* renamed from: a */
    public static Drawable m18913a(@NonNull CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f3390b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f3389a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
            }
            f3390b = true;
        }
        Field field = f3389a;
        if (field == null) {
            return null;
        }
        try {
            return (Drawable) field.get(compoundButton);
        } catch (IllegalAccessException e2) {
            Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
            f3389a = null;
            return null;
        }
    }

    @Nullable
    /* renamed from: b */
    public static ColorStateList m18912b(@NonNull CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (compoundButton instanceof TintableCompoundButton) {
            return ((TintableCompoundButton) compoundButton).getSupportButtonTintList();
        }
        return null;
    }

    /* renamed from: c */
    public static void m18911c(@NonNull CompoundButton compoundButton, @Nullable ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof TintableCompoundButton) {
            ((TintableCompoundButton) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: d */
    public static void m18910d(@NonNull CompoundButton compoundButton, @Nullable PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof TintableCompoundButton) {
            ((TintableCompoundButton) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
