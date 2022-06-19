package p091f4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.textfield.C1815b;
/* renamed from: f4.j */
/* loaded from: classes-dex2jar.jar:f4/j.class */
public class C2745j extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C1815b f9402a;

    public C2745j(C1815b c1815b) {
        this.f9402a = c1815b;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C1815b c1815b = this.f9402a;
        c1815b.f9405c.setChecked(c1815b.f6867k);
        this.f9402a.f6873q.start();
    }
}
