package p091f4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.textfield.C1808a;
/* renamed from: f4.b */
/* loaded from: classes-dex2jar.jar:f4/b.class */
public class C2737b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C1808a f9392a;

    public C2737b(C1808a c1808a) {
        this.f9392a = c1808a;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f9392a.f9403a.setEndIconVisible(false);
    }
}
