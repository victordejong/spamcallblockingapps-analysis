package p1727n3.p1744b0.p1745a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.g$e */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$e.class */
public class g$e extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView.AbstractC0313c0 f71621a;

    /* renamed from: b */
    public final /* synthetic */ View f71622b;

    /* renamed from: c */
    public final /* synthetic */ ViewPropertyAnimator f71623c;

    /* renamed from: d */
    public final /* synthetic */ g f71624d;

    public g$e(g gVar, RecyclerView.AbstractC0313c0 abstractC0313c0, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f71624d = gVar;
        this.f71621a = abstractC0313c0;
        this.f71622b = view;
        this.f71623c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f71622b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f71623c.setListener(null);
        this.f71624d.dispatchAddFinished(this.f71621a);
        this.f71624d.mAddAnimations.remove(this.f71621a);
        this.f71624d.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f71624d.dispatchAddStarting(this.f71621a);
    }
}
