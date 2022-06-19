package p193e.p194a.p1129p5.p1132s0;

import android.animation.Animator;
import s1.z.b.a;
/* renamed from: e.a.p5.s0.a */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/a.class */
public final class C19272a implements Animator.AnimatorListener {

    /* renamed from: a */
    public boolean f53669a;

    /* renamed from: b */
    public final /* synthetic */ boolean f53670b;

    /* renamed from: c */
    public final /* synthetic */ a f53671c;

    public C19272a(boolean z, a aVar) {
        this.f53670b = z;
        this.f53671c = aVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f53669a = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f53670b || !this.f53669a) {
            this.f53671c.invoke();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f53669a = false;
    }
}
