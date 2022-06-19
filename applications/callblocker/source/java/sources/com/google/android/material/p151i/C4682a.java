package com.google.android.material.p151i;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
/* renamed from: com.google.android.material.i.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/i/a.class */
public final class C4682a {
    /* renamed from: a */
    public static PorterDuffColorFilter m2917a(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        return (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }
}
