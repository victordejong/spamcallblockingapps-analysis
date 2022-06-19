package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qe1.class */
public final class qe1 extends AbstractBinderC6603iu {

    /* renamed from: d */
    private final Object f28444d = new Object();

    /* renamed from: e */
    private final AbstractC6640ju f28445e;

    /* renamed from: f */
    private final h80 f28446f;

    public qe1(AbstractC6640ju abstractC6640ju, h80 h80Var) {
        this.f28445e = abstractC6640ju;
        this.f28446f = h80Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: a */
    public final void mo11355a() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: b0 */
    public final void mo11354b0(boolean z) {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: d */
    public final void mo11353d() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: f */
    public final boolean mo11352f() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: g */
    public final float mo11351g() {
        h80 h80Var = this.f28446f;
        if (h80Var != null) {
            return h80Var.mo14727u();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: g3 */
    public final void mo11350g3(AbstractC6751mu abstractC6751mu) {
        synchronized (this.f28444d) {
            AbstractC6640ju abstractC6640ju = this.f28445e;
            if (abstractC6640ju != null) {
                abstractC6640ju.mo11350g3(abstractC6751mu);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: h */
    public final float mo11349h() {
        h80 h80Var = this.f28446f;
        if (h80Var != null) {
            return h80Var.mo14744K();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: j */
    public final float mo11348j() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: k */
    public final void mo11347k() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: l */
    public final boolean mo11346l() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: m */
    public final boolean mo11345m() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: n */
    public final AbstractC6751mu mo11344n() {
        synchronized (this.f28444d) {
            AbstractC6640ju abstractC6640ju = this.f28445e;
            if (abstractC6640ju != null) {
                return abstractC6640ju.mo11344n();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    public final int zzi() {
        throw new RemoteException();
    }
}
