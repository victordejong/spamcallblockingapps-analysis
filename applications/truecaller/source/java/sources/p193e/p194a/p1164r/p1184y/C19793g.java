package p193e.p194a.p1164r.p1184y;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: e.a.r.y.g */
/* loaded from: classes16-dex2jar.jar:e/a/r/y/g.class */
public class C19793g extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f54837a;

    /* renamed from: b */
    public final /* synthetic */ h f54838b;

    public C19793g(h hVar) {
        this.f54838b = hVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f54837a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f54837a) {
            this.f54838b.i.postDelayed(new Runnable() { // from class: e.a.r.y.a
                @Override // java.lang.Runnable
                public final void run() {
                    C19793g c19793g = C19793g.this;
                    if (c19793g.f54838b.getActivity() != null) {
                        c19793g.f54838b.k.Cj();
                    }
                }
            }, 1500L);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f54837a = false;
    }
}
