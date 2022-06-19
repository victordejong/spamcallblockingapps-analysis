package p1727n3.p1859r.p1860a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import p1727n3.p1859r.p1860a.AbstractC26960u0;
import p1727n3.p1859r.p1860a.C26909b;
/* renamed from: n3.r.a.c */
/* loaded from: classes-dex2jar.jar:n3/r/a/c.class */
public class C26915c extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f75288a;

    /* renamed from: b */
    public final /* synthetic */ View f75289b;

    /* renamed from: c */
    public final /* synthetic */ boolean f75290c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC26960u0.C26964d f75291d;

    /* renamed from: e */
    public final /* synthetic */ C26909b.C26911b f75292e;

    public C26915c(C26909b c26909b, ViewGroup viewGroup, View view, boolean z, AbstractC26960u0.C26964d c26964d, C26909b.C26911b c26911b) {
        this.f75288a = viewGroup;
        this.f75289b = view;
        this.f75290c = z;
        this.f75291d = c26964d;
        this.f75292e = c26911b;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f75288a.endViewTransition(this.f75289b);
        if (this.f75290c) {
            this.f75291d.f75457a.m1048a(this.f75289b);
        }
        this.f75292e.m1171a();
    }
}
