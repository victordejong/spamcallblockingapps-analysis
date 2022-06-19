package p1727n3.p1859r.p1860a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1859r.p1860a.C26937m0;
/* renamed from: n3.r.a.o */
/* loaded from: classes-dex2jar.jar:n3/r/a/o.class */
public class C26948o extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f75419a;

    /* renamed from: b */
    public final /* synthetic */ View f75420b;

    /* renamed from: c */
    public final /* synthetic */ Fragment f75421c;

    /* renamed from: d */
    public final /* synthetic */ C26937m0.AbstractC26938a f75422d;

    /* renamed from: e */
    public final /* synthetic */ C26508a f75423e;

    public C26948o(ViewGroup viewGroup, View view, Fragment fragment, C26937m0.AbstractC26938a abstractC26938a, C26508a c26508a) {
        this.f75419a = viewGroup;
        this.f75420b = view;
        this.f75421c = fragment;
        this.f75422d = abstractC26938a;
        this.f75423e = c26508a;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f75419a.endViewTransition(this.f75420b);
        Animator animator2 = this.f75421c.getAnimator();
        this.f75421c.setAnimator((Animator) null);
        if (animator2 == null || this.f75419a.indexOfChild(this.f75420b) >= 0) {
            return;
        }
        ((FragmentManager.C0167d) this.f75422d).m42877a(this.f75421c, this.f75423e);
    }
}
