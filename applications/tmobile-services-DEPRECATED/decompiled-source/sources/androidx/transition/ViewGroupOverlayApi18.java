package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewGroupOverlayApi18.class */
class ViewGroupOverlayApi18 implements ViewGroupOverlayImpl {

    /* renamed from: a */
    private final ViewGroupOverlay f5287a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewGroupOverlayApi18(@NonNull ViewGroup viewGroup) {
        this.f5287a = viewGroup.getOverlay();
    }

    @Override // androidx.transition.ViewOverlayImpl
    /* renamed from: a */
    public void mo16693a(@NonNull Drawable drawable) {
        this.f5287a.add(drawable);
    }

    @Override // androidx.transition.ViewOverlayImpl
    /* renamed from: b */
    public void mo16692b(@NonNull Drawable drawable) {
        this.f5287a.remove(drawable);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    /* renamed from: c */
    public void mo16710c(@NonNull View view) {
        this.f5287a.add(view);
    }

    @Override // androidx.transition.ViewGroupOverlayImpl
    /* renamed from: d */
    public void mo16709d(@NonNull View view) {
        this.f5287a.remove(view);
    }
}
