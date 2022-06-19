package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
/* renamed from: androidx.recyclerview.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/i.class */
public class C0625i extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView.AbstractC0558a0 f2432a;

    /* renamed from: b */
    public final /* synthetic */ int f2433b;

    /* renamed from: c */
    public final /* synthetic */ View f2434c;

    /* renamed from: d */
    public final /* synthetic */ int f2435d;

    /* renamed from: e */
    public final /* synthetic */ ViewPropertyAnimator f2436e;

    /* renamed from: f */
    public final /* synthetic */ C0628l f2437f;

    public C0625i(C0628l c0628l, RecyclerView.AbstractC0558a0 abstractC0558a0, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2437f = c0628l;
        this.f2432a = abstractC0558a0;
        this.f2433b = i;
        this.f2434c = view;
        this.f2435d = i2;
        this.f2436e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (this.f2433b != 0) {
            this.f2434c.setTranslationX(0.0f);
        }
        if (this.f2435d != 0) {
            this.f2434c.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2436e.setListener(null);
        this.f2437f.m7823c(this.f2432a);
        this.f2437f.f2455p.remove(this.f2432a);
        this.f2437f.m7574k();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.f2437f);
    }
}
