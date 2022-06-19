package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
/* renamed from: androidx.transition.ab */
/* loaded from: classes-dex2jar.jar:androidx/transition/ab.class */
final class C2858ab implements AbstractC2859ac {

    /* renamed from: a */
    private final ViewGroupOverlay f10815a;

    public C2858ab(ViewGroup viewGroup) {
        this.f10815a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.AbstractC2866ah
    /* renamed from: a */
    public final void mo39746a(Drawable drawable) {
        this.f10815a.add(drawable);
    }

    @Override // androidx.transition.AbstractC2859ac
    /* renamed from: a */
    public final void mo39757a(View view) {
        this.f10815a.add(view);
    }

    @Override // androidx.transition.AbstractC2866ah
    /* renamed from: b */
    public final void mo39745b(Drawable drawable) {
        this.f10815a.remove(drawable);
    }

    @Override // androidx.transition.AbstractC2859ac
    /* renamed from: b */
    public final void mo39756b(View view) {
        this.f10815a.remove(view);
    }
}
