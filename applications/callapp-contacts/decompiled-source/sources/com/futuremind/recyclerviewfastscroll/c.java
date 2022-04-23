package com.futuremind.recyclerviewfastscroll;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/c.class */
public final class c {
    public static float a(float f, float f2) {
        return Math.min(Math.max((float) BitmapDescriptorFactory.HUE_RED, f2), f);
    }

    public static void a(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
