package com.google.android.material.theme.overlay;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.ContextThemeWrapper;
import com.google.android.material.C1027R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/theme/overlay/MaterialThemeOverlay.class */
public class MaterialThemeOverlay {

    /* renamed from: a */
    private static final int[] f11600a = {16842752, C1027R.attr.theme};

    /* renamed from: b */
    private static final int[] f11601b = {C1027R.attr.materialThemeOverlay};

    private MaterialThemeOverlay() {
    }

    @StyleRes
    /* renamed from: a */
    private static int m8700a(@NonNull Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f11600a);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        resourceId = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        if (resourceId == 0) {
        }
        return resourceId;
    }

    @StyleRes
    /* renamed from: b */
    private static int m8699b(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f11601b, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    @NonNull
    /* renamed from: c */
    public static Context m8698c(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        int b = m8699b(context, attributeSet, i, i2);
        boolean z = (context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).m21979c() == b;
        if (b == 0 || z) {
            return context;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, b);
        int a = m8700a(context, attributeSet);
        if (a != 0) {
            contextThemeWrapper.getTheme().applyStyle(a, true);
        }
        return contextThemeWrapper;
    }
}
