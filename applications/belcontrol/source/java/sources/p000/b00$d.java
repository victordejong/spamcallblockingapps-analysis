package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView$b0;
/* renamed from: b00$d */
/* loaded from: classes-dex2jar.jar:b00$d.class */
public class b00$d extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView$b0 f1708a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f1709b;

    /* renamed from: c */
    public final /* synthetic */ View f1710c;

    /* renamed from: d */
    public final /* synthetic */ b00 f1711d;

    public b00$d(b00 b00Var, RecyclerView$b0 recyclerView$b0, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f1711d = b00Var;
        this.f1708a = recyclerView$b0;
        this.f1709b = viewPropertyAnimator;
        this.f1710c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1709b.setListener(null);
        this.f1710c.setAlpha(1.0f);
        this.f1711d.G(this.f1708a);
        this.f1711d.q.remove(this.f1708a);
        this.f1711d.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1711d.H(this.f1708a);
    }
}
