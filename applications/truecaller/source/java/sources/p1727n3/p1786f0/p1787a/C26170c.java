package p1727n3.p1786f0.p1787a;

import android.animation.Animator;
import p1727n3.p1786f0.p1787a.C26171d;
/* renamed from: n3.f0.a.c */
/* loaded from: classes-dex2jar.jar:n3/f0/a/c.class */
public class C26170c implements Animator.AnimatorListener {

    /* renamed from: a */
    public final /* synthetic */ C26171d.C26172a f72950a;

    /* renamed from: b */
    public final /* synthetic */ C26171d f72951b;

    public C26170c(C26171d c26171d, C26171d.C26172a c26172a) {
        this.f72951b = c26171d;
        this.f72950a = c26172a;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        this.f72951b.m2627a(1.0f, this.f72950a, true);
        C26171d.C26172a c26172a = this.f72950a;
        c26172a.f72971k = c26172a.f72965e;
        c26172a.f72972l = c26172a.f72966f;
        c26172a.f72973m = c26172a.f72967g;
        c26172a.m2623a((c26172a.f72970j + 1) % c26172a.f72969i.length);
        C26171d c26171d = this.f72951b;
        if (!c26171d.f72960f) {
            c26171d.f72959e += 1.0f;
            return;
        }
        c26171d.f72960f = false;
        animator.cancel();
        animator.setDuration(1332L);
        animator.start();
        this.f72950a.m2622b(false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f72951b.f72959e = 0.0f;
    }
}
