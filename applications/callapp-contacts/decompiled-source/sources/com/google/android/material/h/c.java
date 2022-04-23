package com.google.android.material.h;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.appcompat.a.a.a;
import androidx.appcompat.widget.ab;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/h/c.class */
public final class c {
    private c() {
    }

    public static int a(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static ColorStateList a(Context context, TypedArray typedArray, int i) {
        int color;
        int resourceId;
        ColorStateList a2;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (a2 = a.a(context, resourceId)) == null) ? (Build.VERSION.SDK_INT > 15 || (color = typedArray.getColor(i, -1)) == -1) ? typedArray.getColorStateList(i) : ColorStateList.valueOf(color) : a2;
    }

    public static ColorStateList a(Context context, ab abVar, int i) {
        int b2;
        int g;
        ColorStateList a2;
        return (!abVar.g(i) || (g = abVar.g(i, 0)) == 0 || (a2 = a.a(context, g)) == null) ? (Build.VERSION.SDK_INT > 15 || (b2 = abVar.b(i, -1)) == -1) ? abVar.e(i) : ColorStateList.valueOf(b2) : a2;
    }

    public static boolean a(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static Drawable b(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable b2;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (b2 = a.b(context, resourceId)) == null) ? typedArray.getDrawable(i) : b2;
    }

    public static boolean b(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }

    public static d c(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new d(context, resourceId);
    }
}
