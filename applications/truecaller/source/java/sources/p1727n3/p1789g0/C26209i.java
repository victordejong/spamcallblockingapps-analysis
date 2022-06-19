package p1727n3.p1789g0;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
/* renamed from: n3.g0.i */
/* loaded from: classes-dex2jar.jar:n3/g0/i.class */
public class C26209i implements TypeEvaluator<Rect> {
    @Override // android.animation.TypeEvaluator
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        Rect rect3 = rect;
        Rect rect4 = rect2;
        int i = rect3.left;
        int i2 = (int) ((rect4.left - i) * f);
        int i3 = rect3.top;
        int i4 = (int) ((rect4.top - i3) * f);
        int i5 = rect3.right;
        int i6 = (int) ((rect4.right - i5) * f);
        int i7 = rect3.bottom;
        return new Rect(i + i2, i3 + i4, i5 + i6, i7 + ((int) ((rect4.bottom - i7) * f)));
    }
}
