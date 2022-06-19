package p123i3;

import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomappbar.BottomAppBar;
/* renamed from: i3.e */
/* loaded from: classes-dex2jar.jar:i3/e.class */
public class RunnableC3096e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ActionMenuView f10477a;

    /* renamed from: b */
    public final /* synthetic */ int f10478b;

    /* renamed from: c */
    public final /* synthetic */ boolean f10479c;

    /* renamed from: d */
    public final /* synthetic */ BottomAppBar f10480d;

    public RunnableC3096e(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.f10480d = bottomAppBar;
        this.f10477a = actionMenuView;
        this.f10478b = i;
        this.f10479c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        ActionMenuView actionMenuView = this.f10477a;
        actionMenuView.setTranslationX(this.f10480d.m4760D(actionMenuView, this.f10478b, this.f10479c));
    }
}
