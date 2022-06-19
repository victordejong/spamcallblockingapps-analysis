package com.google.android.material.p156n;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
/* renamed from: com.google.android.material.n.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/n/b.class */
public class C4717b {
    /* renamed from: a */
    public static int m2787a(Context context, int i, String str) {
        TypedValue m2788a = m2788a(context, i);
        if (m2788a == null) {
            throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
        }
        return m2788a.data;
    }

    /* renamed from: a */
    public static int m2785a(View view, int i) {
        return m2787a(view.getContext(), i, view.getClass().getCanonicalName());
    }

    /* renamed from: a */
    public static TypedValue m2788a(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(i, typedValue, true) ? typedValue : null;
    }

    /* renamed from: a */
    public static boolean m2786a(Context context, int i, boolean z) {
        TypedValue m2788a = m2788a(context, i);
        boolean z2 = z;
        if (m2788a != null) {
            z2 = z;
            if (m2788a.type == 18) {
                z2 = m2788a.data != 0;
            }
        }
        return z2;
    }
}
