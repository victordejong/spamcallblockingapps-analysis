package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$c.class */
class ChangeTransform$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    private boolean f2644a;

    /* renamed from: b */
    private Matrix f2645b = new Matrix();

    /* renamed from: c */
    final /* synthetic */ boolean f2646c;

    /* renamed from: d */
    final /* synthetic */ Matrix f2647d;

    /* renamed from: e */
    final /* synthetic */ View f2648e;

    /* renamed from: f */
    final /* synthetic */ ChangeTransform$f f2649f;

    /* renamed from: g */
    final /* synthetic */ ChangeTransform$e f2650g;

    /* renamed from: h */
    final /* synthetic */ ChangeTransform f2651h;

    ChangeTransform$c(ChangeTransform changeTransform, boolean z, Matrix matrix, View view, ChangeTransform$f changeTransform$f, ChangeTransform$e changeTransform$e) {
        this.f2651h = changeTransform;
        this.f2646c = z;
        this.f2647d = matrix;
        this.f2648e = view;
        this.f2649f = changeTransform$f;
        this.f2650g = changeTransform$e;
    }

    /* renamed from: a */
    private void m12127a(Matrix matrix) {
        this.f2645b.set(matrix);
        this.f2648e.setTag(C0506p.transition_transform, this.f2645b);
        this.f2649f.m12122a(this.f2648e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2644a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f2644a) {
            if (!this.f2646c || !this.f2651h.K) {
                this.f2648e.setTag(C0506p.transition_transform, null);
                this.f2648e.setTag(C0506p.parent_matrix, null);
            } else {
                m12127a(this.f2647d);
            }
        }
        C0497j0.m12018f(this.f2648e, null);
        this.f2649f.m12122a(this.f2648e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        m12127a(this.f2650g.m12126a());
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        ChangeTransform.t0(this.f2648e);
    }
}
