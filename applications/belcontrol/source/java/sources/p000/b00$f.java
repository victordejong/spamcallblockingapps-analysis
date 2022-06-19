package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView$b0;
/* renamed from: b00$f */
/* loaded from: classes-dex2jar.jar:b00$f.class */
public class b00$f extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView$b0 f1716a;

    /* renamed from: b */
    public final /* synthetic */ int f1717b;

    /* renamed from: c */
    public final /* synthetic */ View f1718c;

    /* renamed from: d */
    public final /* synthetic */ int f1719d;

    /* renamed from: e */
    public final /* synthetic */ ViewPropertyAnimator f1720e;

    /* renamed from: f */
    public final /* synthetic */ b00 f1721f;

    public b00$f(b00 b00Var, RecyclerView$b0 recyclerView$b0, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f1721f = b00Var;
        this.f1716a = recyclerView$b0;
        this.f1717b = i;
        this.f1718c = view;
        this.f1719d = i2;
        this.f1720e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (this.f1717b != 0) {
            this.f1718c.setTranslationX(0.0f);
        }
        if (this.f1719d != 0) {
            this.f1718c.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1720e.setListener(null);
        this.f1721f.E(this.f1716a);
        this.f1721f.p.remove(this.f1716a);
        this.f1721f.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1721f.F(this.f1716a);
    }
}
