package androidx.recyclerview.widget;

import android.view.animation.Interpolator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
class RecyclerView$b implements Interpolator {
    RecyclerView$b() {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }
}
