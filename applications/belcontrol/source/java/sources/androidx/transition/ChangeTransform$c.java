package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeTransform$c.class */
public class ChangeTransform$c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f1502a;

    /* renamed from: b */
    public Matrix f1503b = new Matrix();

    /* renamed from: c */
    public final /* synthetic */ boolean f1504c;

    /* renamed from: d */
    public final /* synthetic */ Matrix f1505d;

    /* renamed from: e */
    public final /* synthetic */ View f1506e;

    /* renamed from: f */
    public final /* synthetic */ ChangeTransform$f f1507f;

    /* renamed from: g */
    public final /* synthetic */ ChangeTransform$e f1508g;

    /* renamed from: h */
    public final /* synthetic */ ChangeTransform f1509h;

    public ChangeTransform$c(ChangeTransform changeTransform, boolean z, Matrix matrix, View view, ChangeTransform$f changeTransform$f, ChangeTransform$e changeTransform$e) {
        this.f1509h = changeTransform;
        this.f1504c = z;
        this.f1505d = matrix;
        this.f1506e = view;
        this.f1507f = changeTransform$f;
        this.f1508g = changeTransform$e;
    }

    /* renamed from: a */
    public final void m6002a(Matrix matrix) {
        this.f1503b.set(matrix);
        this.f1506e.setTag(o20.transition_transform, this.f1503b);
        this.f1507f.m5997a(this.f1506e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f1502a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f1502a) {
            if (!this.f1504c || !this.f1509h.a) {
                this.f1506e.setTag(o20.transition_transform, null);
                this.f1506e.setTag(o20.parent_matrix, null);
            } else {
                m6002a(this.f1505d);
            }
        }
        i30.f(this.f1506e, (Matrix) null);
        this.f1507f.m5997a(this.f1506e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationPause(Animator animator) {
        m6002a(this.f1508g.m6001a());
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public void onAnimationResume(Animator animator) {
        ChangeTransform.f(this.f1506e);
    }
}
