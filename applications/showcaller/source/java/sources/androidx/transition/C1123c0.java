package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
/* renamed from: androidx.transition.c0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/c0.class */
class C1123c0 implements AbstractC1125d0 {

    /* renamed from: a */
    private final ViewGroupOverlay f4891a;

    public C1123c0(ViewGroup viewGroup) {
        this.f4891a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.AbstractC1142i0
    /* renamed from: a */
    public void mo30878a(Drawable drawable) {
        this.f4891a.add(drawable);
    }

    @Override // androidx.transition.AbstractC1142i0
    /* renamed from: b */
    public void mo30877b(Drawable drawable) {
        this.f4891a.remove(drawable);
    }

    @Override // androidx.transition.AbstractC1125d0
    /* renamed from: c */
    public void mo30933c(View view) {
        this.f4891a.add(view);
    }

    @Override // androidx.transition.AbstractC1125d0
    /* renamed from: d */
    public void mo30932d(View view) {
        this.f4891a.remove(view);
    }
}
