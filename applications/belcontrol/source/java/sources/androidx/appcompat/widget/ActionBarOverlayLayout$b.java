package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$b.class */
public class ActionBarOverlayLayout$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ActionBarOverlayLayout f498a;

    public ActionBarOverlayLayout$b(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f498a = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f498a.m();
        ActionBarOverlayLayout actionBarOverlayLayout = this.f498a;
        actionBarOverlayLayout.C = actionBarOverlayLayout.d.animate().translationY(0.0f).setListener(this.f498a.D);
    }
}
