package com.google.android.material.drawable;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/drawable/DrawableUtils.class */
public final class DrawableUtils {
    private DrawableUtils() {
    }

    @TargetApi(21)
    /* renamed from: a */
    public static void m9797a(@Nullable RippleDrawable rippleDrawable, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            rippleDrawable.setRadius(i);
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod("setMaxRadius", Integer.TYPE).invoke(rippleDrawable, Integer.valueOf(i));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            throw new IllegalStateException("Couldn't set RippleDrawable radius", e);
        }
    }

    @Nullable
    /* renamed from: b */
    public static PorterDuffColorFilter m9796b(@NonNull Drawable drawable, @Nullable ColorStateList colorStateList, @Nullable PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }
}
