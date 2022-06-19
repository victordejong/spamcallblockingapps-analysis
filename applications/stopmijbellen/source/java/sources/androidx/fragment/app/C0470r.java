package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0397a0;
import androidx.fragment.app.C0459p0;
import p120i0.C3056b;
/* renamed from: androidx.fragment.app.r */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r.class */
public class C0470r extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f1923a;

    /* renamed from: b */
    public final /* synthetic */ View f1924b;

    /* renamed from: c */
    public final /* synthetic */ Fragment f1925c;

    /* renamed from: d */
    public final /* synthetic */ C0459p0.AbstractC0460a f1926d;

    /* renamed from: e */
    public final /* synthetic */ C3056b f1927e;

    public C0470r(ViewGroup viewGroup, View view, Fragment fragment, C0459p0.AbstractC0460a abstractC0460a, C3056b c3056b) {
        this.f1923a = viewGroup;
        this.f1924b = view;
        this.f1925c = fragment;
        this.f1926d = abstractC0460a;
        this.f1927e = c3056b;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1923a.endViewTransition(this.f1924b);
        Animator animator2 = this.f1925c.getAnimator();
        this.f1925c.setAnimator(null);
        if (animator2 == null || this.f1923a.indexOfChild(this.f1924b) >= 0) {
            return;
        }
        ((AbstractC0397a0.C0401d) this.f1926d).m8141a(this.f1925c, this.f1927e);
    }
}
