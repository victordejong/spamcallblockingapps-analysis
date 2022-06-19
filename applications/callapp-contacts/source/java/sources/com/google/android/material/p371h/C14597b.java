package com.google.android.material.p371h;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
/* renamed from: com.google.android.material.h.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/h/b.class */
public final class C14597b {
    /* renamed from: a */
    public static int m10657a(Context context, int i, String str) {
        TypedValue m10658a = m10658a(context, i);
        if (m10658a != null) {
            return m10658a.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    /* renamed from: a */
    public static int m10655a(View view, int i) {
        return m10657a(view.getContext(), i, view.getClass().getCanonicalName());
    }

    /* renamed from: a */
    public static TypedValue m10658a(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m10656a(Context context, int i, boolean z) {
        TypedValue m10658a = m10658a(context, i);
        return (m10658a == null || m10658a.type != 18) ? z : m10658a.data != 0;
    }
}
