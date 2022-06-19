package p193e.p1577m.p1578a.p1642f.p1660f;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;
/* renamed from: e.m.a.f.f.b */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/f/b.class */
public final class C24995b implements AbstractC25001h {

    /* renamed from: a */
    public final /* synthetic */ Activity f69962a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f69963b;

    /* renamed from: c */
    public final /* synthetic */ Bundle f69964c;

    /* renamed from: d */
    public final /* synthetic */ DeferredLifecycleHelper f69965d;

    public C24995b(DeferredLifecycleHelper deferredLifecycleHelper, Activity activity, Bundle bundle, Bundle bundle2) {
        this.f69965d = deferredLifecycleHelper;
        this.f69962a = activity;
        this.f69963b = bundle;
        this.f69964c = bundle2;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1660f.AbstractC25001h
    /* renamed from: a */
    public final void mo4236a(LifecycleDelegate lifecycleDelegate) {
        this.f69965d.f6169a.m38748e(this.f69962a, this.f69963b, this.f69964c);
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1660f.AbstractC25001h
    /* renamed from: b */
    public final int mo4235b() {
        return 0;
    }
}
