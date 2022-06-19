package com.google.android.material.appbar;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import p174n0.AbstractC3702d;
/* renamed from: com.google.android.material.appbar.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/c.class */
public class C1693c implements AbstractC3702d {

    /* renamed from: a */
    public final /* synthetic */ CoordinatorLayout f6264a;

    /* renamed from: b */
    public final /* synthetic */ AppBarLayout f6265b;

    /* renamed from: c */
    public final /* synthetic */ View f6266c;

    /* renamed from: d */
    public final /* synthetic */ int f6267d;

    /* renamed from: e */
    public final /* synthetic */ AppBarLayout.BaseBehavior f6268e;

    public C1693c(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
        this.f6268e = baseBehavior;
        this.f6264a = coordinatorLayout;
        this.f6265b = appBarLayout;
        this.f6266c = view;
        this.f6267d = i;
    }

    @Override // p174n0.AbstractC3702d
    /* renamed from: a */
    public boolean mo1864a(View view, AbstractC3702d.AbstractC3703a abstractC3703a) {
        this.f6268e.m4774G(this.f6264a, this.f6265b, this.f6266c, this.f6267d, new int[]{0, 0});
        return true;
    }
}
