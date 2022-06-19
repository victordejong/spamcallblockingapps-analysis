package androidx.transition;

import android.graphics.Rect;
import android.view.ViewGroup;
/* renamed from: androidx.transition.c */
/* loaded from: classes-dex2jar.jar:androidx/transition/c.class */
public class C1122c extends AbstractC1161q0 {

    /* renamed from: b */
    private float f4890b = 3.0f;

    /* renamed from: h */
    private static float m30935h(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // androidx.transition.AbstractC1172w
    /* renamed from: c */
    public long mo30818c(ViewGroup viewGroup, Transition transition, C1175y c1175y, C1175y c1175y2) {
        int i;
        int i2;
        int i3;
        int[] iArr;
        if (c1175y == null && c1175y2 == null) {
            return 0L;
        }
        if (c1175y2 == null || m30839e(c1175y) == 0) {
            i = -1;
        } else {
            c1175y = c1175y2;
            i = 1;
        }
        int m30838f = m30838f(c1175y);
        int m30837g = m30837g(c1175y);
        Rect m30988v = transition.m30988v();
        if (m30988v != null) {
            i3 = m30988v.centerX();
            i2 = m30988v.centerY();
        } else {
            viewGroup.getLocationOnScreen(new int[2]);
            i3 = Math.round(iArr[0] + (viewGroup.getWidth() / 2) + viewGroup.getTranslationX());
            i2 = Math.round(iArr[1] + (viewGroup.getHeight() / 2) + viewGroup.getTranslationY());
        }
        float m30935h = m30935h(m30838f, m30837g, i3, i2) / m30935h(0.0f, 0.0f, viewGroup.getWidth(), viewGroup.getHeight());
        ?? m30989t = transition.m30989t();
        char c = m30989t;
        if (m30989t < 0) {
            c = 300;
        }
        return Math.round((((float) (c * i)) / this.f4890b) * m30935h);
    }
}
