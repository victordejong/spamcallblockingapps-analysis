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
public final class C0622c {

    /* renamed from: a */
    private static Field f2185a;

    /* renamed from: b */
    private static boolean f2186b;

    /* renamed from: a */
    public static ColorStateList m20163a(CompoundButton compoundButton) {
        return Build.VERSION.SDK_INT >= 21 ? compoundButton.getButtonTintList() : compoundButton instanceof AbstractC0630j ? ((AbstractC0630j) compoundButton).getSupportButtonTintList() : null;
    }

    /* renamed from: a */
    public static void m20162a(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (!(compoundButton instanceof AbstractC0630j)) {
        } else {
            ((AbstractC0630j) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m20161a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (!(compoundButton instanceof AbstractC0630j)) {
        } else {
            ((AbstractC0630j) compoundButton).setSupportButtonTintMode(mode);
        }
    }

    /* renamed from: b */
    public static Drawable m20160b(CompoundButton compoundButton) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT >= 23) {
            drawable = compoundButton.getButtonDrawable();
        } else {
            if (!f2186b) {
                try {
                    f2185a = CompoundButton.class.getDeclaredField("mButtonDrawable");
                    f2185a.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", e);
                }
                f2186b = true;
            }
            if (f2185a != null) {
                try {
                    drawable = (Drawable) f2185a.get(compoundButton);
                } catch (IllegalAccessException e2) {
                    Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", e2);
                    f2185a = null;
                }
            }
            drawable = null;
        }
        return drawable;
    }
}
