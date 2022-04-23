package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
class ActionBarOverlayLayout$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ActionBarOverlayLayout f355b;

    ActionBarOverlayLayout$b(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f355b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f355b.s();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f355b;
        actionBarOverlayLayout.B = actionBarOverlayLayout.e.animate().translationY(0.0f).setListener(this.f355b.C);
    }
}
