package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
public class ActionBarOverlayLayout$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ActionBarOverlayLayout f221a;

    public ActionBarOverlayLayout$a(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f221a = actionBarOverlayLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f221a;
        actionBarOverlayLayout.A = null;
        actionBarOverlayLayout.k = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f221a;
        actionBarOverlayLayout.A = null;
        actionBarOverlayLayout.k = false;
    }
}
