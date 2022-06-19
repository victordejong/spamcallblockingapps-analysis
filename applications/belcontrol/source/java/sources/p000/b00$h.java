package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: b00$h */
/* loaded from: classes-dex2jar.jar:b00$h.class */
public class b00$h extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ b00$i f1726a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f1727b;

    /* renamed from: c */
    public final /* synthetic */ View f1728c;

    /* renamed from: d */
    public final /* synthetic */ b00 f1729d;

    public b00$h(b00 b00Var, b00$i b00_i, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f1729d = b00Var;
        this.f1726a = b00_i;
        this.f1727b = viewPropertyAnimator;
        this.f1728c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1727b.setListener(null);
        this.f1728c.setAlpha(1.0f);
        this.f1728c.setTranslationX(0.0f);
        this.f1728c.setTranslationY(0.0f);
        this.f1729d.C(this.f1726a.f1731b, false);
        this.f1729d.r.remove(this.f1726a.f1731b);
        this.f1729d.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1729d.D(this.f1726a.f1731b, false);
    }
}
