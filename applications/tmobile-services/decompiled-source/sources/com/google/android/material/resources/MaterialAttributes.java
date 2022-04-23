package com.google.android.material.resources;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/resources/MaterialAttributes.class */
public class MaterialAttributes {
    @Nullable
    /* renamed from: a */
    public static TypedValue m9398a(@NonNull Context context, @AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m9397b(@NonNull Context context, @AttrRes int i, boolean z) {
        TypedValue a = m9398a(context, i);
        boolean z2 = z;
        if (a != null) {
            z2 = z;
            if (a.type == 18) {
                z2 = a.data != 0;
            }
        }
        return z2;
    }

    /* renamed from: c */
    public static int m9396c(@NonNull Context context, @AttrRes int i, @NonNull String str) {
        TypedValue a = m9398a(context, i);
        if (a != null) {
            return a.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    /* renamed from: d */
    public static int m9395d(@NonNull View view, @AttrRes int i) {
        return m9396c(view.getContext(), i, view.getClass().getCanonicalName());
    }
}
