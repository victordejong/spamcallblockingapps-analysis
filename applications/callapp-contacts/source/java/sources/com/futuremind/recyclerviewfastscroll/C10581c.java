package com.futuremind.recyclerviewfastscroll;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.futuremind.recyclerviewfastscroll.c */
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/c.class */
public final class C10581c {
    /* renamed from: a */
    public static float m22626a(float f, float f2) {
        return Math.min(Math.max((float) BitmapDescriptorFactory.HUE_RED, f2), f);
    }

    /* renamed from: a */
    public static void m22625a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
