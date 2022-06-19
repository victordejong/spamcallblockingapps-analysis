package p1727n3.p1789g0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import p1727n3.p1788g.C26174a;
/* renamed from: n3.g0.n */
/* loaded from: classes-dex2jar.jar:n3/g0/n.class */
public class C26219n extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C26174a f73107a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC26214m f73108b;

    public C26219n(AbstractC26214m abstractC26214m, C26174a c26174a) {
        this.f73108b = abstractC26214m;
        this.f73107a = c26174a;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f73107a.remove(animator);
        this.f73108b.f73093m.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f73108b.f73093m.add(animator);
    }
}
