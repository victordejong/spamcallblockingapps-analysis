package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0484w0;
import androidx.fragment.app.C0416c;
/* renamed from: androidx.fragment.app.d */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d.class */
public class C0423d extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f1773a;

    /* renamed from: b */
    public final /* synthetic */ View f1774b;

    /* renamed from: c */
    public final /* synthetic */ boolean f1775c;

    /* renamed from: d */
    public final /* synthetic */ AbstractC0484w0.C0488d f1776d;

    /* renamed from: e */
    public final /* synthetic */ C0416c.C0418b f1777e;

    public C0423d(C0416c c0416c, ViewGroup viewGroup, View view, boolean z, AbstractC0484w0.C0488d c0488d, C0416c.C0418b c0418b) {
        this.f1773a = viewGroup;
        this.f1774b = view;
        this.f1775c = z;
        this.f1776d = c0488d;
        this.f1777e = c0418b;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1773a.endViewTransition(this.f1774b);
        if (this.f1775c) {
            this.f1776d.f1964a.m8038a(this.f1774b);
        }
        this.f1777e.m8133a();
    }
}
