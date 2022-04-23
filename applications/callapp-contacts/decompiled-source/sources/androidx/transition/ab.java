package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
/* loaded from: classes-dex2jar.jar:androidx/transition/ab.class */
final class ab implements ac {

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroupOverlay f5758a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(ViewGroup viewGroup) {
        this.f5758a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.ah
    public final void a(Drawable drawable) {
        this.f5758a.add(drawable);
    }

    @Override // androidx.transition.ac
    public final void a(View view) {
        this.f5758a.add(view);
    }

    @Override // androidx.transition.ah
    public final void b(Drawable drawable) {
        this.f5758a.remove(drawable);
    }

    @Override // androidx.transition.ac
    public final void b(View view) {
        this.f5758a.remove(view);
    }
}
