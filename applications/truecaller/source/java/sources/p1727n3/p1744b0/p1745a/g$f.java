package p1727n3.p1744b0.p1745a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.b0.a.g$f */
/* loaded from: classes-dex2jar.jar:n3/b0/a/g$f.class */
public class g$f extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView.AbstractC0313c0 f71625a;

    /* renamed from: b */
    public final /* synthetic */ int f71626b;

    /* renamed from: c */
    public final /* synthetic */ View f71627c;

    /* renamed from: d */
    public final /* synthetic */ int f71628d;

    /* renamed from: e */
    public final /* synthetic */ ViewPropertyAnimator f71629e;

    /* renamed from: f */
    public final /* synthetic */ g f71630f;

    public g$f(g gVar, RecyclerView.AbstractC0313c0 abstractC0313c0, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f71630f = gVar;
        this.f71625a = abstractC0313c0;
        this.f71626b = i;
        this.f71627c = view;
        this.f71628d = i2;
        this.f71629e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (this.f71626b != 0) {
            this.f71627c.setTranslationX(0.0f);
        }
        if (this.f71628d != 0) {
            this.f71627c.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f71629e.setListener(null);
        this.f71630f.dispatchMoveFinished(this.f71625a);
        this.f71630f.mMoveAnimations.remove(this.f71625a);
        this.f71630f.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f71630f.dispatchMoveStarting(this.f71625a);
    }
}
