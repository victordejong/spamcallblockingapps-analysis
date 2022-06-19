package androidx.p045j;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
/* renamed from: androidx.j.aa */
/* loaded from: classes-dex2jar.jar:androidx/j/aa.class */
class C0760aa implements AbstractC0761ab {

    /* renamed from: a */
    private final ViewOverlay f2662a;

    public C0760aa(View view) {
        this.f2662a = view.getOverlay();
    }

    @Override // androidx.p045j.AbstractC0761ab
    /* renamed from: a */
    public void mo19334a(Drawable drawable) {
        this.f2662a.add(drawable);
    }

    @Override // androidx.p045j.AbstractC0761ab
    /* renamed from: b */
    public void mo19333b(Drawable drawable) {
        this.f2662a.remove(drawable);
    }
}
