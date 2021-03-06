package androidx.transition;

import android.animation.TypeEvaluator;
import android.graphics.Rect;
/* renamed from: androidx.transition.p */
/* loaded from: classes-dex2jar.jar:androidx/transition/p.class */
final class C2903p implements TypeEvaluator<Rect> {

    /* renamed from: a */
    private Rect f10899a;

    public C2903p() {
    }

    public C2903p(Rect rect) {
        this.f10899a = rect;
    }

    @Override // android.animation.TypeEvaluator
    public final /* synthetic */ Rect evaluate(float f, Rect rect, Rect rect2) {
        Rect rect3 = rect;
        Rect rect4 = rect2;
        int i = rect3.left + ((int) ((rect4.left - rect3.left) * f));
        int i2 = rect3.top + ((int) ((rect4.top - rect3.top) * f));
        int i3 = rect3.right + ((int) ((rect4.right - rect3.right) * f));
        int i4 = rect3.bottom + ((int) ((rect4.bottom - rect3.bottom) * f));
        Rect rect5 = this.f10899a;
        if (rect5 == null) {
            return new Rect(i, i2, i3, i4);
        }
        rect5.set(i, i2, i3, i4);
        return this.f10899a;
    }
}
