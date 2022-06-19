package p132j2;

import com.github.clans.fab.FloatingActionButton;
import com.github.clans.fab.FloatingActionMenu;
/* renamed from: j2.d */
/* loaded from: classes-dex2jar.jar:j2/d.class */
public class RunnableC3172d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ FloatingActionButton f10680a;

    /* renamed from: b */
    public final /* synthetic */ boolean f10681b;

    /* renamed from: c */
    public final /* synthetic */ FloatingActionMenu f10682c;

    public RunnableC3172d(FloatingActionMenu floatingActionMenu, FloatingActionButton floatingActionButton, boolean z) {
        this.f10682c = floatingActionMenu;
        this.f10680a = floatingActionButton;
        this.f10681b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        FloatingActionMenu floatingActionMenu = this.f10682c;
        if (floatingActionMenu.f6124j) {
            return;
        }
        FloatingActionButton floatingActionButton = this.f10680a;
        if (floatingActionButton != floatingActionMenu.f6115e) {
            floatingActionButton.m4834o(this.f10681b);
        }
        C3173e c3173e = (C3173e) this.f10680a.getTag(2131296606);
        if (c3173e == null || !c3173e.f10700q) {
            return;
        }
        if (this.f10681b && c3173e.f10697n != null) {
            c3173e.f10698o.cancel();
            c3173e.startAnimation(c3173e.f10697n);
        }
        c3173e.setVisibility(0);
    }
}
