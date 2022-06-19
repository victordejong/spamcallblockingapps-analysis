package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* renamed from: androidx.transition.h0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/h0.class */
class C1139h0 implements AbstractC1142i0 {

    /* renamed from: a */
    private final ViewOverlay f4931a;

    public C1139h0(View view) {
        this.f4931a = view.getOverlay();
    }

    @Override // androidx.transition.AbstractC1142i0
    /* renamed from: a */
    public void mo30878a(Drawable drawable) {
        this.f4931a.add(drawable);
    }

    @Override // androidx.transition.AbstractC1142i0
    /* renamed from: b */
    public void mo30877b(Drawable drawable) {
        this.f4931a.remove(drawable);
    }
}
