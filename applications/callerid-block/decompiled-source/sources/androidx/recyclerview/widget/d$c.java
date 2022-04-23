package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$c.class */
class d$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    private boolean f2378a = false;

    /* renamed from: b */
    final /* synthetic */ d f2379b;

    d$c(d dVar) {
        this.f2379b = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2378a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f2378a) {
            this.f2378a = false;
        } else if (((Float) this.f2379b.z.getAnimatedValue()).floatValue() == 0.0f) {
            d dVar = this.f2379b;
            dVar.A = 0;
            dVar.y(0);
        } else {
            d dVar2 = this.f2379b;
            dVar2.A = 2;
            dVar2.v();
        }
    }
}
