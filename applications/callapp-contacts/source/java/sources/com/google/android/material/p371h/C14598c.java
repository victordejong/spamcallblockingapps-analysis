package com.google.android.material.p371h;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.appcompat.p017a.p018a.C0153a;
import androidx.appcompat.widget.C0370ab;
/* renamed from: com.google.android.material.h.c */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/h/c.class */
public final class C14598c {
    private C14598c() {
    }

    /* renamed from: a */
    public static int m10652a(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, i2);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* renamed from: a */
    public static ColorStateList m10653a(Context context, TypedArray typedArray, int i) {
        int color;
        int resourceId;
        ColorStateList m46375a;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m46375a = C0153a.m46375a(context, resourceId)) == null) ? (Build.VERSION.SDK_INT > 15 || (color = typedArray.getColor(i, -1)) == -1) ? typedArray.getColorStateList(i) : ColorStateList.valueOf(color) : m46375a;
    }

    /* renamed from: a */
    public static ColorStateList m10651a(Context context, C0370ab c0370ab, int i) {
        int m45802b;
        int m45792g;
        ColorStateList m46375a;
        return (!c0370ab.m45793g(i) || (m45792g = c0370ab.m45792g(i, 0)) == 0 || (m46375a = C0153a.m46375a(context, m45792g)) == null) ? (Build.VERSION.SDK_INT > 15 || (m45802b = c0370ab.m45802b(i, -1)) == -1) ? c0370ab.m45797e(i) : ColorStateList.valueOf(m45802b) : m46375a;
    }

    /* renamed from: a */
    public static boolean m10654a(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    /* renamed from: b */
    public static Drawable m10649b(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable m46374b;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (m46374b = C0153a.m46374b(context, resourceId)) == null) ? typedArray.getDrawable(i) : m46374b;
    }

    /* renamed from: b */
    public static boolean m10650b(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }

    /* renamed from: c */
    public static C14599d m10648c(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new C14599d(context, resourceId);
    }
}
