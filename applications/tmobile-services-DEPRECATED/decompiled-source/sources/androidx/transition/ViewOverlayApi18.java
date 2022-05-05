package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewOverlayApi18.class */
class ViewOverlayApi18 implements ViewOverlayImpl {

    /* renamed from: a */
    private final ViewOverlay f5302a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewOverlayApi18(@NonNull View view) {
        this.f5302a = view.getOverlay();
    }

    @Override // androidx.transition.ViewOverlayImpl
    /* renamed from: a */
    public void mo16693a(@NonNull Drawable drawable) {
        this.f5302a.add(drawable);
    }

    @Override // androidx.transition.ViewOverlayImpl
    /* renamed from: b */
    public void mo16692b(@NonNull Drawable drawable) {
        this.f5302a.remove(drawable);
    }
}
