package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* renamed from: androidx.recyclerview.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/h.class */
public class C0624h extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView.AbstractC0558a0 f2428a;

    /* renamed from: b */
    public final /* synthetic */ View f2429b;

    /* renamed from: c */
    public final /* synthetic */ ViewPropertyAnimator f2430c;

    /* renamed from: d */
    public final /* synthetic */ C0628l f2431d;

    public C0624h(C0628l c0628l, RecyclerView.AbstractC0558a0 abstractC0558a0, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2431d = c0628l;
        this.f2428a = abstractC0558a0;
        this.f2429b = view;
        this.f2430c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2429b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2430c.setListener(null);
        this.f2431d.m7823c(this.f2428a);
        this.f2431d.f2454o.remove(this.f2428a);
        this.f2431d.m7574k();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f2431d);
    }
}
