package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
/* renamed from: androidx.transition.q */
/* loaded from: classes-dex2jar.jar:androidx/transition/q.class */
class C0508q implements TypeEvaluator<Rect> {

    /* renamed from: a */
    private Rect f2754a;

    C0508q() {
    }

    C0508q(Rect rect) {
        this.f2754a = rect;
    }

    /* renamed from: a */
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        int i = rect.left;
        int i2 = i + ((int) ((rect2.left - i) * f));
        int i3 = rect.top;
        int i4 = i3 + ((int) ((rect2.top - i3) * f));
        int i5 = rect.right;
        int i6 = i5 + ((int) ((rect2.right - i5) * f));
        int i7 = rect.bottom;
        int i8 = i7 + ((int) ((rect2.bottom - i7) * f));
        Rect rect3 = this.f2754a;
        if (rect3 == null) {
            return new Rect(i2, i4, i6, i8);
        }
        rect3.set(i2, i4, i6, i8);
        return this.f2754a;
    }
}
