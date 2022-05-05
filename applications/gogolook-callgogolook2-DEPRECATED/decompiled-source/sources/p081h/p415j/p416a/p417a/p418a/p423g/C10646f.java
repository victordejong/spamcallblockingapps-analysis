package p081h.p415j.p416a.p417a.p418a.p423g;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
/* renamed from: h.j.a.a.a.g.f */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/g/f.class */
public final class C10646f {
    /* renamed from: a */
    public static float m11076a(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    /* renamed from: b */
    public static View m11075b(View view) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m11074c(View view) {
        if (Build.VERSION.SDK_INT >= 19 && !view.isAttachedToWindow()) {
            return false;
        }
        if (!view.isShown()) {
            return false;
        }
        for (View view2 = view; view2 != null; view2 = m11075b(view2)) {
            if (view2.getAlpha() == 0.0f) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m11073d(View view) {
        return (Build.VERSION.SDK_INT < 19 || view.isAttachedToWindow()) && view.getVisibility() == 0 && view.getAlpha() != 0.0f;
    }
}
