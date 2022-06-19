package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.AbstractC6253a;
import com.google.android.gms.dynamic.BinderC6255b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rw0.class */
public final class rw0 extends AbstractBinderC6631jl {

    /* renamed from: d */
    private final qw0 f29264d;

    /* renamed from: e */
    private final AbstractC7008ts f29265e;

    /* renamed from: f */
    private final xe2 f29266f;

    /* renamed from: g */
    private boolean f29267g = false;

    public rw0(qw0 qw0Var, AbstractC7008ts abstractC7008ts, xe2 xe2Var) {
        this.f29264d = qw0Var;
        this.f29265e = abstractC7008ts;
        this.f29266f = xe2Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6668kl
    /* renamed from: I1 */
    public final void mo10484I1(C6853pl c6853pl) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6668kl
    /* renamed from: a */
    public final AbstractC7008ts mo10483a() {
        return this.f29265e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6668kl
    /* renamed from: f3 */
    public final void mo10482f3(AbstractC6379cu abstractC6379cu) {
        C6155o.m17023e("setOnPaidEventListener must be called on the main UI thread.");
        xe2 xe2Var = this.f29266f;
        if (xe2Var != null) {
            xe2Var.m9231v(abstractC6379cu);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6668kl
    /* renamed from: j1 */
    public final void mo10481j1(AbstractC6253a abstractC6253a, AbstractC6964sl abstractC6964sl) {
        try {
            this.f29266f.m9236n(abstractC6964sl);
            this.f29264d.m11782h((Activity) BinderC6255b.m16745J0(abstractC6253a), abstractC6964sl, this.f29267g);
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6668kl
    /* renamed from: y0 */
    public final void mo10480y0(boolean z) {
        this.f29267g = z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6668kl
    public final AbstractC6491fu zzg() {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25658b5)).booleanValue()) {
            return null;
        }
        return this.f29264d.m9018d();
    }
}
