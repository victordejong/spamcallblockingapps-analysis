package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeClipBounds$a.class */
class ChangeClipBounds$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ View f2642a;

    ChangeClipBounds$a(ChangeClipBounds changeClipBounds, View view) {
        this.f2642a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        t.t0(this.f2642a, (Rect) null);
    }
}
