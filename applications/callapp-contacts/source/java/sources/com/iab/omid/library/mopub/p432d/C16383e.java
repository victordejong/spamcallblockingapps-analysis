package com.iab.omid.library.mopub.p432d;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.iab.omid.library.mopub.d.e */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/d/e.class */
public final class C16383e {
    /* renamed from: a */
    public static float m7319a(View view) {
        return Build.VERSION.SDK_INT >= 21 ? view.getZ() : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: b */
    public static boolean m7318b(View view) {
        if (Build.VERSION.SDK_INT < 19 || view.isAttachedToWindow()) {
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
        return false;
    }

    /* renamed from: c */
    public static String m7317c(View view) {
        if (Build.VERSION.SDK_INT < 19 || view.isAttachedToWindow()) {
            int visibility = view.getVisibility();
            if (visibility != 0) {
                return visibility != 4 ? visibility != 8 ? "viewNotVisible" : "viewGone" : "viewInvisible";
            } else if (view.getAlpha() != BitmapDescriptorFactory.HUE_RED) {
                return null;
            } else {
                return "viewAlphaZero";
            }
        }
        return "notAttached";
    }
}
