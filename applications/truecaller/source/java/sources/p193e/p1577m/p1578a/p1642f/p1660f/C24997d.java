package p193e.p1577m.p1578a.p1642f.p1660f;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;
/* renamed from: e.m.a.f.f.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/f/d.class */
public final class C24997d implements AbstractC25001h {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f69968a;

    /* renamed from: b */
    public final /* synthetic */ LayoutInflater f69969b;

    /* renamed from: c */
    public final /* synthetic */ ViewGroup f69970c;

    /* renamed from: d */
    public final /* synthetic */ Bundle f69971d;

    /* renamed from: e */
    public final /* synthetic */ DeferredLifecycleHelper f69972e;

    public C24997d(DeferredLifecycleHelper deferredLifecycleHelper, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f69972e = deferredLifecycleHelper;
        this.f69968a = frameLayout;
        this.f69969b = layoutInflater;
        this.f69970c = viewGroup;
        this.f69971d = bundle;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1660f.AbstractC25001h
    /* renamed from: a */
    public final void mo4236a(LifecycleDelegate lifecycleDelegate) {
        this.f69968a.removeAllViews();
        this.f69968a.addView(this.f69972e.f6169a.m38747f(this.f69969b, this.f69970c, this.f69971d));
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1660f.AbstractC25001h
    /* renamed from: b */
    public final int mo4235b() {
        return 2;
    }
}
