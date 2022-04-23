package com.google.android.material.b;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import com.google.android.material.h.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/b/a.class */
public final class a {
    private a() {
    }

    public static int a(int i, int i2) {
        return androidx.core.graphics.a.b(i, (Color.alpha(i) * i2) / 255);
    }

    public static int a(int i, int i2, float f) {
        return androidx.core.graphics.a.a(androidx.core.graphics.a.b(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    public static int a(Context context, int i, int i2) {
        TypedValue a2 = b.a(context, i);
        return a2 != null ? a2.data : i2;
    }
}
