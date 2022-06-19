package com.iab.omid.library.mopub.p127d;

import android.view.View;
import android.view.ViewParent;
/* renamed from: com.iab.omid.library.mopub.d.f */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/d/f.class */
public final class C2619f {
    /* renamed from: a */
    public static float m36388a(View view) {
        return view.getZ();
    }

    /* renamed from: b */
    public static View m36387b(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m36386c(View view) {
        if (!view.isAttachedToWindow()) {
            return false;
        }
        if (!view.isShown()) {
            return false;
        }
        for (View view2 = view; view2 != null; view2 = m36387b(view2)) {
            if (view2.getAlpha() == 0.0f) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m36385d(View view) {
        return m36384e(view) == null;
    }

    /* renamed from: e */
    public static String m36384e(View view) {
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
