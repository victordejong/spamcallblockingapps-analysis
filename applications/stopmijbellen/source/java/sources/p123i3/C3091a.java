package p123i3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;
/* renamed from: i3.a */
/* loaded from: classes-dex2jar.jar:i3/a.class */
public class C3091a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ BottomAppBar f10467a;

    public C3091a(BottomAppBar bottomAppBar) {
        this.f10467a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        BottomAppBar.m4755x(this.f10467a);
        this.f10467a.f6291T = null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f10467a.f6296b0++;
    }
}
