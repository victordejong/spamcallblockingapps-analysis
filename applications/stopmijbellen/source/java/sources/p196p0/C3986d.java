package p196p0;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import p120i0.C3055a;
/* renamed from: p0.d */
/* loaded from: classes-dex2jar.jar:p0/d.class */
public final class C3986d {

    /* renamed from: p0.d$a */
    /* loaded from: classes-dex2jar.jar:p0/d$a.class */
    public static class C3987a {
        /* renamed from: a */
        public static EdgeEffect m1571a(Context context, AttributeSet attributeSet) {
            try {
                return new EdgeEffect(context, attributeSet);
            } catch (Throwable th) {
                return new EdgeEffect(context);
            }
        }

        /* renamed from: b */
        public static float m1570b(EdgeEffect edgeEffect) {
            try {
                return edgeEffect.getDistance();
            } catch (Throwable th) {
                return 0.0f;
            }
        }

        /* renamed from: c */
        public static float m1569c(EdgeEffect edgeEffect, float f, float f2) {
            try {
                return edgeEffect.onPullDistance(f, f2);
            } catch (Throwable th) {
                edgeEffect.onPull(f, f2);
                return 0.0f;
            }
        }
    }

    /* renamed from: a */
    public static float m1573a(EdgeEffect edgeEffect) {
        if (C3055a.m2668a()) {
            return C3987a.m1570b(edgeEffect);
        }
        return 0.0f;
    }

    /* renamed from: b */
    public static float m1572b(EdgeEffect edgeEffect, float f, float f2) {
        if (C3055a.m2668a()) {
            return C3987a.m1569c(edgeEffect, f, f2);
        }
        edgeEffect.onPull(f, f2);
        return f;
    }
}
