package p123i3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;
import java.util.Objects;
/* renamed from: i3.c */
/* loaded from: classes-dex2jar.jar:i3/c.class */
public class C3094c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ BottomAppBar f10471a;

    public C3094c(BottomAppBar bottomAppBar) {
        this.f10471a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        BottomAppBar.m4755x(this.f10471a);
        Objects.requireNonNull(this.f10471a);
        this.f10471a.f6292U = null;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f10471a.f6296b0++;
    }
}
