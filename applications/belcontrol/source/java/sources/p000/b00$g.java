package p000;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* renamed from: b00$g */
/* loaded from: classes-dex2jar.jar:b00$g.class */
public class b00$g extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ b00$i f1722a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f1723b;

    /* renamed from: c */
    public final /* synthetic */ View f1724c;

    /* renamed from: d */
    public final /* synthetic */ b00 f1725d;

    public b00$g(b00 b00Var, b00$i b00_i, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f1725d = b00Var;
        this.f1722a = b00_i;
        this.f1723b = viewPropertyAnimator;
        this.f1724c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1723b.setListener(null);
        this.f1724c.setAlpha(1.0f);
        this.f1724c.setTranslationX(0.0f);
        this.f1724c.setTranslationY(0.0f);
        this.f1725d.C(this.f1722a.f1730a, true);
        this.f1725d.r.remove(this.f1722a.f1730a);
        this.f1725d.V();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1725d.D(this.f1722a.f1730a, true);
    }
}
