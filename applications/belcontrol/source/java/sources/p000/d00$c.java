package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: d00$c */
/* loaded from: classes-dex2jar.jar:d00$c.class */
public class d00$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f5736a = false;

    /* renamed from: b */
    public final /* synthetic */ d00 f5737b;

    public d00$c(d00 d00Var) {
        this.f5737b = d00Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f5736a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f5736a) {
            this.f5736a = false;
        } else if (((Float) this.f5737b.z.getAnimatedValue()).floatValue() == 0.0f) {
            d00 d00Var = this.f5737b;
            d00Var.A = 0;
            d00Var.s(0);
        } else {
            d00 d00Var2 = this.f5737b;
            d00Var2.A = 2;
            d00Var2.p();
        }
    }
}
