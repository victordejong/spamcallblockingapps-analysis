package androidx.p045j;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
/* renamed from: androidx.j.k */
/* loaded from: classes-dex2jar.jar:androidx/j/k.class */
class C0805k implements TypeEvaluator<Rect> {

    /* renamed from: a */
    private Rect f2757a;

    /* renamed from: a */
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        Rect rect3;
        int i = ((int) ((rect2.left - rect.left) * f)) + rect.left;
        int i2 = ((int) ((rect2.top - rect.top) * f)) + rect.top;
        int i3 = ((int) ((rect2.right - rect.right) * f)) + rect.right;
        int i4 = ((int) ((rect2.bottom - rect.bottom) * f)) + rect.bottom;
        if (this.f2757a == null) {
            rect3 = new Rect(i, i2, i3, i4);
        } else {
            this.f2757a.set(i, i2, i3, i4);
            rect3 = this.f2757a;
        }
        return rect3;
    }
}
