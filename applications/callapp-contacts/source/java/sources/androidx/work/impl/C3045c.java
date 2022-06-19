package androidx.work.impl;

import androidx.lifecycle.C1267t;
import androidx.work.AbstractC3150n;
import androidx.work.impl.utils.p089a.C3117c;
import com.google.common.util.concurrent.AbstractFutureC15579a;
/* renamed from: androidx.work.impl.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/c.class */
public final class C3045c implements AbstractC3150n {

    /* renamed from: c */
    private final C1267t<AbstractC3150n.AbstractC3152a> f11281c = new C1267t<>();

    /* renamed from: d */
    private final C3117c<AbstractC3150n.AbstractC3152a.C3155c> f11282d = C3117c.m39313a();

    public C3045c() {
        m39400a(AbstractC3150n.f11511b);
    }

    @Override // androidx.work.AbstractC3150n
    /* renamed from: a */
    public final AbstractFutureC15579a<AbstractC3150n.AbstractC3152a.C3155c> mo39272a() {
        return this.f11282d;
    }

    /* renamed from: a */
    public final void m39400a(AbstractC3150n.AbstractC3152a abstractC3152a) {
        this.f11281c.mo43287a((C1267t<AbstractC3150n.AbstractC3152a>) abstractC3152a);
        if (abstractC3152a instanceof AbstractC3150n.AbstractC3152a.C3155c) {
            this.f11282d.mo39311a((C3117c<AbstractC3150n.AbstractC3152a.C3155c>) ((AbstractC3150n.AbstractC3152a.C3155c) abstractC3152a));
        } else if (!(abstractC3152a instanceof AbstractC3150n.AbstractC3152a.C3153a)) {
        } else {
            this.f11282d.mo39310a(((AbstractC3150n.AbstractC3152a.C3153a) abstractC3152a).f11512a);
        }
    }
}
