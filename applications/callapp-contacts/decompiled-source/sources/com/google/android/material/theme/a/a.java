package com.google.android.material.theme.a;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.view.d;
import com.google.android.material.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/theme/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f30940a = {16842752, a.b.theme};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f30941b = {a.b.materialThemeOverlay};

    private a() {
    }

    public static Context a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f30941b, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        boolean z = (context instanceof d) && ((d) context).f732a == resourceId;
        if (resourceId == 0 || z) {
            return context;
        }
        d dVar = new d(context, resourceId);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, f30940a);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        resourceId2 = obtainStyledAttributes2.getResourceId(1, 0);
        obtainStyledAttributes2.recycle();
        if (resourceId2 == 0) {
        }
        if (resourceId2 != 0) {
            dVar.getTheme().applyStyle(resourceId2, true);
        }
        return dVar;
    }
}
