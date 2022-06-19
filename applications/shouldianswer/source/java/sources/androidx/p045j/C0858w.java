package androidx.p045j;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
/* renamed from: androidx.j.w */
/* loaded from: classes-dex2jar.jar:androidx/j/w.class */
class C0858w implements AbstractC0859x {

    /* renamed from: a */
    private final ViewGroupOverlay f2704a;

    public C0858w(ViewGroup viewGroup) {
        this.f2704a = viewGroup.getOverlay();
    }

    @Override // androidx.p045j.AbstractC0793ad
    /* renamed from: a */
    public void mo5218a(Drawable drawable) {
        this.f2704a.add(drawable);
    }

    @Override // androidx.p045j.AbstractC0859x
    /* renamed from: a */
    public void mo5216a(View view) {
        this.f2704a.add(view);
    }

    @Override // androidx.p045j.AbstractC0793ad
    /* renamed from: b */
    public void mo5217b(Drawable drawable) {
        this.f2704a.remove(drawable);
    }

    @Override // androidx.p045j.AbstractC0859x
    /* renamed from: b */
    public void mo5215b(View view) {
        this.f2704a.remove(view);
    }
}
