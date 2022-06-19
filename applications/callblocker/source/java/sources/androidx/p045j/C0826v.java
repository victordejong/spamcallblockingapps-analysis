package androidx.p045j;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
/* renamed from: androidx.j.v */
/* loaded from: classes-dex2jar.jar:androidx/j/v.class */
class C0826v implements AbstractC0827w {

    /* renamed from: a */
    private final ViewGroupOverlay f2829a;

    public C0826v(ViewGroup viewGroup) {
        this.f2829a = viewGroup.getOverlay();
    }

    @Override // androidx.p045j.AbstractC0761ab
    /* renamed from: a */
    public void mo19334a(Drawable drawable) {
        this.f2829a.add(drawable);
    }

    @Override // androidx.p045j.AbstractC0827w
    /* renamed from: a */
    public void mo19341a(View view) {
        this.f2829a.add(view);
    }

    @Override // androidx.p045j.AbstractC0761ab
    /* renamed from: b */
    public void mo19333b(Drawable drawable) {
        this.f2829a.remove(drawable);
    }

    @Override // androidx.p045j.AbstractC0827w
    /* renamed from: b */
    public void mo19340b(View view) {
        this.f2829a.remove(view);
    }
}
