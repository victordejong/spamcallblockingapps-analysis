package com.google.android.material.appbar;

import android.view.View;
import com.google.android.material.appbar.AppBarLayout;
import p174n0.AbstractC3702d;
/* renamed from: com.google.android.material.appbar.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/d.class */
public class C1694d implements AbstractC3702d {

    /* renamed from: a */
    public final /* synthetic */ AppBarLayout f6269a;

    /* renamed from: b */
    public final /* synthetic */ boolean f6270b;

    public C1694d(AppBarLayout.BaseBehavior baseBehavior, AppBarLayout appBarLayout, boolean z) {
        this.f6269a = appBarLayout;
        this.f6270b = z;
    }

    @Override // p174n0.AbstractC3702d
    /* renamed from: a */
    public boolean mo1864a(View view, AbstractC3702d.AbstractC3703a abstractC3703a) {
        this.f6269a.setExpanded(this.f6270b);
        return true;
    }
}
