package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$c.class */
public class ActionBarOverlayLayout$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ActionBarOverlayLayout f223a;

    public ActionBarOverlayLayout$c(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f223a = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f223a.k();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f223a;
        actionBarOverlayLayout.A = actionBarOverlayLayout.d.animate().translationY(-this.f223a.d.getHeight()).setListener(this.f223a.B);
    }
}
