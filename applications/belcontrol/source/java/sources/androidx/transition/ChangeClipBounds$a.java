package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeClipBounds$a.class */
public class ChangeClipBounds$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ View f1500a;

    public ChangeClipBounds$a(ChangeClipBounds changeClipBounds, View view) {
        this.f1500a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        jb.t0(this.f1500a, (Rect) null);
    }
}
