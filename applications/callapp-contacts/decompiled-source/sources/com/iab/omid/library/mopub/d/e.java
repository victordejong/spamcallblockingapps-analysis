package com.iab.omid.library.mopub.d;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/e.class */
public final class e {
    public static float a(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getZ() : BitmapDescriptorFactory.HUE_RED;
    }

    public static boolean b(View view) {
        if (Build.VERSION.SDK_INT >= 19 && !view.isAttachedToWindow()) {
            return false;
        }
        View view2 = view;
        if (!view.isShown()) {
            return false;
        }
        while (view2 != null) {
            if (view2.getAlpha() == BitmapDescriptorFactory.HUE_RED) {
                return false;
            }
            ViewParent parent = view2.getParent();
            view2 = parent instanceof View ? (View) parent : null;
        }
        return true;
    }

    public static String c(View view) {
        if (Build.VERSION.SDK_INT >= 19 && !view.isAttachedToWindow()) {
            return "notAttached";
        }
        int visibility = view.getVisibility();
        if (visibility != 0) {
            return visibility != 4 ? visibility != 8 ? "viewNotVisible" : "viewGone" : "viewInvisible";
        }
        if (view.getAlpha() == BitmapDescriptorFactory.HUE_RED) {
            return "viewAlphaZero";
        }
        return null;
    }
}
