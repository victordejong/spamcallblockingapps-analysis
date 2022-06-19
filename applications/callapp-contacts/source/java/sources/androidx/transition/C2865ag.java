package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* renamed from: androidx.transition.ag */
/* loaded from: classes-dex2jar.jar:androidx/transition/ag.class */
final class C2865ag implements AbstractC2866ah {

    /* renamed from: a */
    private final ViewOverlay f10831a;

    public C2865ag(View view) {
        this.f10831a = view.getOverlay();
    }

    @Override // androidx.transition.AbstractC2866ah
    /* renamed from: a */
    public final void mo39746a(Drawable drawable) {
        this.f10831a.add(drawable);
    }

    @Override // androidx.transition.AbstractC2866ah
    /* renamed from: b */
    public final void mo39745b(Drawable drawable) {
        this.f10831a.remove(drawable);
    }
}
