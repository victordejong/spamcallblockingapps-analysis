package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ti2.class */
final class ti2 extends hr2 {

    /* renamed from: a */
    final /* synthetic */ AbstractC7231zt f30015a;

    /* renamed from: b */
    final /* synthetic */ vi2 f30016b;

    public ti2(vi2 vi2Var, AbstractC7231zt abstractC7231zt) {
        this.f30016b = vi2Var;
        this.f30015a = abstractC7231zt;
    }

    @Override // com.google.android.gms.internal.ads.hr2
    /* renamed from: r */
    public final void mo10653r() {
        fk1 fk1Var;
        fk1Var = this.f30016b.f31199i;
        if (fk1Var != null) {
            try {
                this.f30015a.mo8188a();
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
            }
        }
    }
}
