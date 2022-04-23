package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* loaded from: classes-dex2jar.jar:androidx/transition/ag.class */
final class ag implements ah {

    /* renamed from: a  reason: collision with root package name */
    private final ViewOverlay f5771a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(View view) {
        this.f5771a = view.getOverlay();
    }

    @Override // androidx.transition.ah
    public final void a(Drawable drawable) {
        this.f5771a.add(drawable);
    }

    @Override // androidx.transition.ah
    public final void b(Drawable drawable) {
        this.f5771a.remove(drawable);
    }
}
