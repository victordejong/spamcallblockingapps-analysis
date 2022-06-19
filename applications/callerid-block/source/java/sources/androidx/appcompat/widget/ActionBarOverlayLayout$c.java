package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$c.class */
class ActionBarOverlayLayout$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ActionBarOverlayLayout f356b;

    ActionBarOverlayLayout$c(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f356b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f356b.s();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f356b;
        actionBarOverlayLayout.B = actionBarOverlayLayout.e.animate().translationY(-this.f356b.e.getHeight()).setListener(this.f356b.C);
    }
}
