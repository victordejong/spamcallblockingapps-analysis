package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/Fade$b.class */
public class Fade$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final View f1523a;

    /* renamed from: b */
    public boolean f1524b = false;

    public Fade$b(View view) {
        this.f1523a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        i30.h(this.f1523a, 1.0f);
        if (this.f1524b) {
            this.f1523a.setLayerType(0, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        if (!jb.O(this.f1523a) || this.f1523a.getLayerType() != 0) {
            return;
        }
        this.f1524b = true;
        this.f1523a.setLayerType(2, null);
    }
}
