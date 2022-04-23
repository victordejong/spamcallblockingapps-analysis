package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TintTypedArray;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/resources/MaterialResources.class */
public class MaterialResources {
    private MaterialResources() {
    }

    @Nullable
    /* renamed from: a */
    public static ColorStateList m9394a(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        int color;
        int resourceId;
        ColorStateList c;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (c = AppCompatResources.m22070c(context, resourceId)) == null) ? (Build.VERSION.SDK_INT > 15 || (color = typedArray.getColor(i, -1)) == -1) ? typedArray.getColorStateList(i) : ColorStateList.valueOf(color) : c;
    }

    @Nullable
    /* renamed from: b */
    public static ColorStateList m9393b(@NonNull Context context, @NonNull TintTypedArray tintTypedArray, @StyleableRes int i) {
        int b;
        int n;
        ColorStateList c;
        return (!tintTypedArray.m21247s(i) || (n = tintTypedArray.m21252n(i, 0)) == 0 || (c = AppCompatResources.m22070c(context, n)) == null) ? (Build.VERSION.SDK_INT > 15 || (b = tintTypedArray.m21264b(i, -1)) == -1) ? tintTypedArray.m21263c(i) : ColorStateList.valueOf(b) : c;
    }

    /* renamed from: c */
    public static int m9392c(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    @Nullable
    /* renamed from: d */
    public static Drawable m9391d(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        Drawable d;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (d = AppCompatResources.m22069d(context, resourceId)) == null) ? typedArray.getDrawable(i) : d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @StyleableRes
    /* renamed from: e */
    public static int m9390e(@NonNull TypedArray typedArray, @StyleableRes int i, @StyleableRes int i2) {
        return typedArray.hasValue(i) ? i : i2;
    }

    @Nullable
    /* renamed from: f */
    public static TextAppearance m9389f(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new TextAppearance(context, resourceId);
    }
}
