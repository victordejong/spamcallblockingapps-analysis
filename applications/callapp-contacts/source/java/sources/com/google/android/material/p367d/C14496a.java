package com.google.android.material.p367d;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
/* renamed from: com.google.android.material.d.a */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/d/a.class */
public final class C14496a {
    private C14496a() {
    }

    /* renamed from: a */
    public static PorterDuffColorFilter m10864a(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }
}
