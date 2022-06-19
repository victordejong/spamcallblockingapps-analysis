package androidx.p045j;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* renamed from: androidx.j.ac */
/* loaded from: classes-dex2jar.jar:androidx/j/ac.class */
class C0792ac implements AbstractC0793ad {

    /* renamed from: a */
    private final ViewOverlay f2561a;

    public C0792ac(View view) {
        this.f2561a = view.getOverlay();
    }

    @Override // androidx.p045j.AbstractC0793ad
    /* renamed from: a */
    public void mo5218a(Drawable drawable) {
        this.f2561a.add(drawable);
    }

    @Override // androidx.p045j.AbstractC0793ad
    /* renamed from: b */
    public void mo5217b(Drawable drawable) {
        this.f2561a.remove(drawable);
    }
}
