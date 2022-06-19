package p082e7;

import android.view.View;
/* renamed from: e7.b */
/* loaded from: classes-dex2jar.jar:e7/b.class */
public final class C2605b {
    /* renamed from: a */
    public static String m3384a(View view) {
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
