package com.iab.omid.library.applovin.p062d;

import android.view.View;
import android.view.ViewParent;
/* renamed from: com.iab.omid.library.applovin.d.f */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/d/f.class */
public final class C1951f {
    /* renamed from: a */
    public static float m4073a(View view) {
        return view.getZ();
    }

    /* renamed from: b */
    public static View m4072b(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m4071c(View view) {
        if (!view.isAttachedToWindow()) {
            return false;
        }
        if (!view.isShown()) {
            return false;
        }
        for (View view2 = view; view2 != null; view2 = m4072b(view2)) {
            if (view2.getAlpha() == 0.0f) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m4070d(View view) {
        return m4069e(view) == null;
    }

    /* renamed from: e */
    public static String m4069e(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        int visibility = view.getVisibility();
        if (visibility != 0) {
            return visibility != 4 ? visibility != 8 ? "viewNotVisible" : "viewGone" : "viewInvisible";
        } else if (view.getAlpha() != 0.0f) {
            return null;
        } else {
            return "viewAlphaZero";
        }
    }
}
