package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$c.class */
public class ActionBarOverlayLayout$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ActionBarOverlayLayout f499a;

    public ActionBarOverlayLayout$c(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f499a = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f499a.m();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f499a;
        actionBarOverlayLayout.C = actionBarOverlayLayout.d.animate().translationY(-this.f499a.d.getHeight()).setListener(this.f499a.D);
    }
}
