package p123i3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomappbar.BottomAppBar;
import java.util.Objects;
/* renamed from: i3.d */
/* loaded from: classes-dex2jar.jar:i3/d.class */
public class C3095d extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f10472a;

    /* renamed from: b */
    public final /* synthetic */ ActionMenuView f10473b;

    /* renamed from: c */
    public final /* synthetic */ int f10474c;

    /* renamed from: d */
    public final /* synthetic */ boolean f10475d;

    /* renamed from: e */
    public final /* synthetic */ BottomAppBar f10476e;

    public C3095d(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.f10476e = bottomAppBar;
        this.f10473b = actionMenuView;
        this.f10474c = i;
        this.f10475d = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f10472a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f10472a) {
            BottomAppBar bottomAppBar = this.f10476e;
            int i = bottomAppBar.f6297c0;
            boolean z = i != 0;
            if (i != 0) {
                bottomAppBar.f6297c0 = 0;
                bottomAppBar.getMenu().clear();
                bottomAppBar.m8604n(i);
            }
            BottomAppBar bottomAppBar2 = this.f10476e;
            ActionMenuView actionMenuView = this.f10473b;
            int i2 = this.f10474c;
            boolean z2 = this.f10475d;
            Objects.requireNonNull(bottomAppBar2);
            RunnableC3096e runnableC3096e = new RunnableC3096e(bottomAppBar2, actionMenuView, i2, z2);
            if (z) {
                actionMenuView.post(runnableC3096e);
            } else {
                runnableC3096e.run();
            }
        }
    }
}
