package p193e.p1577m.p1578a.p1642f.p1660f;

import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.dynamic.LifecycleDelegate;
/* renamed from: e.m.a.f.f.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/f/c.class */
public final class C24996c implements AbstractC25001h {

    /* renamed from: a */
    public final /* synthetic */ Bundle f69966a;

    /* renamed from: b */
    public final /* synthetic */ DeferredLifecycleHelper f69967b;

    public C24996c(DeferredLifecycleHelper deferredLifecycleHelper, Bundle bundle) {
        this.f69967b = deferredLifecycleHelper;
        this.f69966a = bundle;
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1660f.AbstractC25001h
    /* renamed from: a */
    public final void mo4236a(LifecycleDelegate lifecycleDelegate) {
        this.f69967b.f6169a.onCreate(this.f69966a);
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1660f.AbstractC25001h
    /* renamed from: b */
    public final int mo4235b() {
        return 1;
    }
}
