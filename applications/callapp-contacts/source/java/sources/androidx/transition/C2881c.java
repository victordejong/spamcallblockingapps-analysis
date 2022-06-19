package androidx.transition;

import android.graphics.Rect;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.transition.c */
/* loaded from: classes-dex2jar.jar:androidx/transition/c.class */
public final class C2881c extends AbstractC2876ap {

    /* renamed from: a */
    private float f10852a = 3.0f;

    /* renamed from: a */
    private static float m39719a(float f, float f2, float f3, float f4) {
        float f5 = f3 - f;
        float f6 = f4 - f2;
        return (float) Math.sqrt((f5 * f5) + (f6 * f6));
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // androidx.transition.AbstractC2911v
    /* renamed from: a */
    public final long mo39677a(ViewGroup viewGroup, Transition transition, C2914x c2914x, C2914x c2914x2) {
        int i;
        int i2;
        int i3;
        int[] iArr;
        if (c2914x == null && c2914x2 == null) {
            return 0L;
        }
        if (c2914x2 == null || m39723b(c2914x) == 0) {
            i = -1;
        } else {
            i = 1;
            c2914x = c2914x2;
        }
        int c = m39722c(c2914x);
        int d = m39721d(c2914x);
        Rect m39795j = transition.m39795j();
        if (m39795j != null) {
            i3 = m39795j.centerX();
            i2 = m39795j.centerY();
        } else {
            viewGroup.getLocationOnScreen(new int[2]);
            i3 = Math.round(iArr[0] + (viewGroup.getWidth() / 2) + viewGroup.getTranslationX());
            i2 = Math.round(iArr[1] + (viewGroup.getHeight() / 2) + viewGroup.getTranslationY());
        }
        float m39719a = m39719a(c, d, i3, i2) / m39719a((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, viewGroup.getWidth(), viewGroup.getHeight());
        ?? r0 = transition.f10757b;
        char c2 = r0;
        if (r0 < 0) {
            c2 = 300;
        }
        return Math.round((((float) (c2 * i)) / this.f10852a) * m39719a);
    }
}
