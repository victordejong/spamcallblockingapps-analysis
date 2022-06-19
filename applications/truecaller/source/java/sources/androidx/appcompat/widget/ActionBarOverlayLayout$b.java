package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
public class ActionBarOverlayLayout$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ActionBarOverlayLayout f222a;

    public ActionBarOverlayLayout$b(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f222a = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f222a.k();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f222a;
        actionBarOverlayLayout.A = actionBarOverlayLayout.d.animate().translationY(0.0f).setListener(this.f222a.B);
    }
}
