package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* renamed from: androidx.recyclerview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g.class */
public class C0623g extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView.AbstractC0558a0 f2424a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f2425b;

    /* renamed from: c */
    public final /* synthetic */ View f2426c;

    /* renamed from: d */
    public final /* synthetic */ C0628l f2427d;

    public C0623g(C0628l c0628l, RecyclerView.AbstractC0558a0 abstractC0558a0, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2427d = c0628l;
        this.f2424a = abstractC0558a0;
        this.f2425b = viewPropertyAnimator;
        this.f2426c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2425b.setListener(null);
        this.f2426c.setAlpha(1.0f);
        this.f2427d.m7823c(this.f2424a);
        this.f2427d.f2456q.remove(this.f2424a);
        this.f2427d.m7574k();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f2427d);
    }
}
