package com.google.android.material.p365b;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import androidx.core.graphics.C0834a;
import com.google.android.material.p371h.C14597b;
/* renamed from: com.google.android.material.b.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/b/a.class */
public final class C14416a {
    private C14416a() {
    }

    /* renamed from: a */
    public static int m11242a(int i, int i2) {
        return C0834a.m44396b(i, (Color.alpha(i) * i2) / 255);
    }

    /* renamed from: a */
    public static int m11241a(int i, int i2, float f) {
        return C0834a.m44403a(C0834a.m44396b(i2, Math.round(Color.alpha(i2) * f)), i);
    }

    /* renamed from: a */
    public static int m11240a(Context context, int i, int i2) {
        TypedValue m10658a = C14597b.m10658a(context, i);
        return m10658a != null ? m10658a.data : i2;
    }
}
