package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarOverlayLayout$a.class */
public class ActionBarOverlayLayout$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ActionBarOverlayLayout f497a;

    public ActionBarOverlayLayout$a(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f497a = actionBarOverlayLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f497a;
        actionBarOverlayLayout.C = null;
        actionBarOverlayLayout.m = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f497a;
        actionBarOverlayLayout.C = null;
        actionBarOverlayLayout.m = false;
    }
}
