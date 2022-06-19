package p091f4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.textfield.C1808a;
/* renamed from: f4.a */
/* loaded from: classes-dex2jar.jar:f4/a.class */
public class C2736a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C1808a f9391a;

    public C2736a(C1808a c1808a) {
        this.f9391a = c1808a;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f9391a.f9403a.setEndIconVisible(true);
    }
}
