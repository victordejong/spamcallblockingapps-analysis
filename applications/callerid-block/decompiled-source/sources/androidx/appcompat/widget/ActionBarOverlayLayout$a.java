package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
class ActionBarOverlayLayout$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ActionBarOverlayLayout f354a;

    ActionBarOverlayLayout$a(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f354a = actionBarOverlayLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f354a;
        actionBarOverlayLayout.B = null;
        actionBarOverlayLayout.l = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f354a;
        actionBarOverlayLayout.B = null;
        actionBarOverlayLayout.l = false;
    }
}
