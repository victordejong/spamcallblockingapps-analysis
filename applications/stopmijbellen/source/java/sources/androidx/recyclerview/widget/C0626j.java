package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.C0628l;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* renamed from: androidx.recyclerview.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j.class */
public class C0626j extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C0628l.C0629a f2438a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f2439b;

    /* renamed from: c */
    public final /* synthetic */ View f2440c;

    /* renamed from: d */
    public final /* synthetic */ C0628l f2441d;

    public C0626j(C0628l c0628l, C0628l.C0629a c0629a, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2441d = c0628l;
        this.f2438a = c0629a;
        this.f2439b = viewPropertyAnimator;
        this.f2440c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2439b.setListener(null);
        this.f2440c.setAlpha(1.0f);
        this.f2440c.setTranslationX(0.0f);
        this.f2440c.setTranslationY(0.0f);
        this.f2441d.m7823c(this.f2438a.f2458a);
        this.f2441d.f2457r.remove(this.f2438a.f2458a);
        this.f2441d.m7574k();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        C0628l c0628l = this.f2441d;
        RecyclerView.AbstractC0558a0 abstractC0558a0 = this.f2438a.f2458a;
        Objects.requireNonNull(c0628l);
    }
}
