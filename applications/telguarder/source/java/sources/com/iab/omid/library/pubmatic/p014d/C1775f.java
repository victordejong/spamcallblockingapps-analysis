package com.iab.omid.library.pubmatic.p014d;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
/* renamed from: com.iab.omid.library.pubmatic.d.f */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/d/f.class */
public final class C1775f {
    /* renamed from: a */
    public static float m1212a(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    /* renamed from: b */
    public static View m1211b(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m1210c(View view) {
        if (Build.VERSION.SDK_INT < 19 || view.isAttachedToWindow()) {
            if (!view.isShown()) {
                return false;
            }
            for (View view2 = view; view2 != null; view2 = m1211b(view2)) {
                if (view2.getAlpha() == 0.0f) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m1209d(View view) {
        return m1208e(view) == null;
    }

    /* renamed from: e */
    public static String m1208e(View view) {
        if (Build.VERSION.SDK_INT < 19 || view.isAttachedToWindow()) {
            int visibility = view.getVisibility();
            if (visibility != 0) {
                return visibility != 4 ? visibility != 8 ? "viewNotVisible" : "viewGone" : "viewInvisible";
            } else if (view.getAlpha() != 0.0f) {
                return null;
            } else {
                return "viewAlphaZero";
            }
        }
        return "notAttached";
    }
}
