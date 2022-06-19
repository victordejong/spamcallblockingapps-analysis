package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgx.class */
public final class bgx extends AbstractBinderC12567fw {

    /* renamed from: a */
    private final String f43904a;

    /* renamed from: b */
    private final bcf f43905b;

    /* renamed from: c */
    private final bcr f43906c;

    public bgx(String str, bcf bcfVar, bcr bcrVar) {
        this.f43904a = str;
        this.f43905b = bcfVar;
        this.f43906c = bcrVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final String mo14677a() throws RemoteException {
        return this.f43906c.m18167e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14676a(Bundle bundle) throws RemoteException {
        this.f43905b.m18234a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14675a(elu eluVar) throws RemoteException {
        this.f43905b.m18227a(eluVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14674a(ely elyVar) throws RemoteException {
        this.f43905b.m18226a(elyVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14673a(emd emdVar) throws RemoteException {
        this.f43905b.m18225a(emdVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14672a(AbstractC12563fs abstractC12563fs) throws RemoteException {
        this.f43905b.m18224a(abstractC12563fs);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: b */
    public final List<?> mo14671b() throws RemoteException {
        return this.f43906c.m18166f();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: b */
    public final boolean mo14670b(Bundle bundle) throws RemoteException {
        return this.f43905b.m18220b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: c */
    public final String mo14669c() throws RemoteException {
        return this.f43906c.m18162j();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: c */
    public final void mo14668c(Bundle bundle) throws RemoteException {
        this.f43905b.m18216c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: d */
    public final AbstractC12394dr mo14667d() throws RemoteException {
        return this.f43906c.m18154r();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: e */
    public final String mo14666e() throws RemoteException {
        return this.f43906c.m18160l();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: f */
    public final String mo14665f() throws RemoteException {
        return this.f43906c.m18153s();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: g */
    public final double mo14664g() throws RemoteException {
        return this.f43906c.m18155q();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: h */
    public final String mo14663h() throws RemoteException {
        return this.f43906c.m18157o();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: i */
    public final String mo14662i() throws RemoteException {
        return this.f43906c.m18156p();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: j */
    public final emk mo14661j() throws RemoteException {
        return this.f43906c.m18178b();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: k */
    public final String mo14660k() throws RemoteException {
        return this.f43904a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: l */
    public final void mo14659l() throws RemoteException {
        this.f43905b.mo18235a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: m */
    public final AbstractC12371dj mo14658m() throws RemoteException {
        return this.f43906c.m18170c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: n */
    public final AbstractC12126b mo14657n() throws RemoteException {
        return BinderC12129d.m18979a(this.f43905b);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: o */
    public final AbstractC12126b mo14656o() throws RemoteException {
        return this.f43906c.m18158n();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: p */
    public final Bundle mo14655p() throws RemoteException {
        return this.f43906c.m18161k();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: q */
    public final void mo14654q() throws RemoteException {
        this.f43905b.m18217c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: r */
    public final List<?> mo14653r() throws RemoteException {
        return mo14652s() ? this.f43906c.m18164h() : Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: s */
    public final boolean mo14652s() throws RemoteException {
        return !this.f43906c.m18164h().isEmpty() && this.f43906c.m18163i() != null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: t */
    public final void mo14651t() {
        this.f43905b.m18213d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: u */
    public final void mo14650u() {
        this.f43905b.m18211e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: v */
    public final AbstractC12389dq mo14649v() throws RemoteException {
        return this.f43905b.f43533q.m18206a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: w */
    public final boolean mo14648w() {
        return this.f43905b.m18209f();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: x */
    public final emj mo14647x() throws RemoteException {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42888em)).booleanValue()) {
            return null;
        }
        return this.f43905b.f42490l;
    }
}
