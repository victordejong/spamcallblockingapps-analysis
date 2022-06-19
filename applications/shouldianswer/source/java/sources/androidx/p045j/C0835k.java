package androidx.p045j;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
/* renamed from: androidx.j.k */
/* loaded from: classes-dex2jar.jar:androidx/j/k.class */
class C0835k implements TypeEvaluator<Rect> {

    /* renamed from: a */
    private Rect f2657a;

    /* renamed from: a */
    public Rect evaluate(float f, Rect rect, Rect rect2) {
        int i = rect.left + ((int) ((rect2.left - rect.left) * f));
        int i2 = rect.top + ((int) ((rect2.top - rect.top) * f));
        int i3 = rect.right + ((int) ((rect2.right - rect.right) * f));
        int i4 = rect.bottom + ((int) ((rect2.bottom - rect.bottom) * f));
        Rect rect3 = this.f2657a;
        if (rect3 == null) {
            return new Rect(i, i2, i3, i4);
        }
        rect3.set(i, i2, i3, i4);
        return this.f2657a;
    }
}
