package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView$b0;
/* renamed from: b00$e */
/* loaded from: classes-dex2jar.jar:b00$e.class */
public class b00$e extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView$b0 f1712a;

    /* renamed from: b */
    public final /* synthetic */ View f1713b;

    /* renamed from: c */
    public final /* synthetic */ ViewPropertyAnimator f1714c;

    /* renamed from: d */
    public final /* synthetic */ b00 f1715d;

    public b00$e(b00 b00Var, RecyclerView$b0 recyclerView$b0, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f1715d = b00Var;
        this.f1712a = recyclerView$b0;
        this.f1713b = view;
        this.f1714c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f1713b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1714c.setListener(null);
        this.f1715d.A(this.f1712a);
        this.f1715d.o.remove(this.f1712a);
        this.f1715d.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1715d.B(this.f1712a);
    }
}
