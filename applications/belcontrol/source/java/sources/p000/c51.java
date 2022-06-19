package p000;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
/* renamed from: c51 */
/* loaded from: classes-dex2jar.jar:c51.class */
public final class c51 {
    /* renamed from: a */
    public static float m5450a(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    /* renamed from: b */
    public static View m5449b(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m5448c(View view) {
        if (Build.VERSION.SDK_INT < 19 || view.isAttachedToWindow()) {
            if (!view.isShown()) {
                return false;
            }
            for (View view2 = view; view2 != null; view2 = m5449b(view2)) {
                if (view2.getAlpha() == 0.0f) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m5447d(View view) {
        return m5446e(view) == null;
    }

    /* renamed from: e */
    public static String m5446e(View view) {
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
