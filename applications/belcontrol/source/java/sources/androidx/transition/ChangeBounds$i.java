package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$i.class */
public class ChangeBounds$i extends AnimatorListenerAdapter {

    /* renamed from: a */
    public boolean f1486a;

    /* renamed from: b */
    public final /* synthetic */ View f1487b;

    /* renamed from: c */
    public final /* synthetic */ Rect f1488c;

    /* renamed from: d */
    public final /* synthetic */ int f1489d;

    /* renamed from: e */
    public final /* synthetic */ int f1490e;

    /* renamed from: f */
    public final /* synthetic */ int f1491f;

    /* renamed from: g */
    public final /* synthetic */ int f1492g;

    public ChangeBounds$i(ChangeBounds changeBounds, View view, Rect rect, int i, int i2, int i3, int i4) {
        this.f1487b = view;
        this.f1488c = rect;
        this.f1489d = i;
        this.f1490e = i2;
        this.f1491f = i3;
        this.f1492g = i4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f1486a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (!this.f1486a) {
            jb.t0(this.f1487b, this.f1488c);
            i30.g(this.f1487b, this.f1489d, this.f1490e, this.f1491f, this.f1492g);
        }
    }
}
