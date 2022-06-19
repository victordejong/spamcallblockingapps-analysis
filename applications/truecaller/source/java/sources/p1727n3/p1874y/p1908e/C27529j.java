package p1727n3.p1874y.p1908e;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.ImageButton;
import androidx.media2.widget.C0285R;
/* renamed from: n3.y.e.j */
/* loaded from: classes-dex2jar.jar:n3/y/e/j.class */
public class C27529j extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k f77536a;

    public C27529j(k kVar) {
        this.f77536a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f77536a.k0.setVisibility(8);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        int i = 0;
        this.f77536a.j0.setVisibility(0);
        ImageButton g = this.f77536a.g(C0285R.C0287id.ffwd);
        C27544x c27544x = this.f77536a.d;
        if (c27544x == null || !c27544x.m144b()) {
            i = 8;
        }
        g.setVisibility(i);
    }
}
