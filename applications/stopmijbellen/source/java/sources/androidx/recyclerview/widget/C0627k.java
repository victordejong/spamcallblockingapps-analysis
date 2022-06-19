package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.C0628l;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k.class */
public class C0627k extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C0628l.C0629a f2442a;

    /* renamed from: b */
    public final /* synthetic */ ViewPropertyAnimator f2443b;

    /* renamed from: c */
    public final /* synthetic */ View f2444c;

    /* renamed from: d */
    public final /* synthetic */ C0628l f2445d;

    public C0627k(C0628l c0628l, C0628l.C0629a c0629a, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2445d = c0628l;
        this.f2442a = c0629a;
        this.f2443b = viewPropertyAnimator;
        this.f2444c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2443b.setListener(null);
        this.f2444c.setAlpha(1.0f);
        this.f2444c.setTranslationX(0.0f);
        this.f2444c.setTranslationY(0.0f);
        this.f2445d.m7823c(this.f2442a.f2459b);
        this.f2445d.f2457r.remove(this.f2442a.f2459b);
        this.f2445d.m7574k();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        C0628l c0628l = this.f2445d;
        RecyclerView.AbstractC0558a0 abstractC0558a0 = this.f2442a.f2459b;
        Objects.requireNonNull(c0628l);
    }
}
