package p131j1;

import android.animation.Animator;
import p131j1.C3166d;
/* renamed from: j1.c */
/* loaded from: classes-dex2jar.jar:j1/c.class */
public class C3165c implements Animator.AnimatorListener {

    /* renamed from: a */
    public final /* synthetic */ C3166d.C3167a f10638a;

    /* renamed from: b */
    public final /* synthetic */ C3166d f10639b;

    public C3165c(C3166d c3166d, C3166d.C3167a c3167a) {
        this.f10639b = c3166d;
        this.f10638a = c3167a;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        this.f10639b.m2584a(1.0f, this.f10638a, true);
        C3166d.C3167a c3167a = this.f10638a;
        c3167a.f10659k = c3167a.f10653e;
        c3167a.f10660l = c3167a.f10654f;
        c3167a.f10661m = c3167a.f10655g;
        c3167a.m2580a((c3167a.f10658j + 1) % c3167a.f10657i.length);
        C3166d c3166d = this.f10639b;
        if (!c3166d.f10648f) {
            c3166d.f10647e += 1.0f;
            return;
        }
        c3166d.f10648f = false;
        animator.cancel();
        animator.setDuration(1332L);
        animator.start();
        this.f10638a.m2579b(false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f10639b.f10647e = 0.0f;
    }
}
