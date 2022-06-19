package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aj2.class */
final class aj2 extends hr2 {

    /* renamed from: a */
    final /* synthetic */ AbstractC7156xs f19974a;

    /* renamed from: b */
    final /* synthetic */ bj2 f19975b;

    public aj2(bj2 bj2Var, AbstractC7156xs abstractC7156xs) {
        this.f19975b = bj2Var;
        this.f19974a = abstractC7156xs;
    }

    @Override // com.google.android.gms.internal.ads.hr2
    /* renamed from: r */
    public final void mo10653r() {
        fk1 fk1Var;
        fk1Var = this.f19975b.f20492g;
        if (fk1Var != null) {
            try {
                this.f19974a.mo9071a();
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
            }
        }
    }
}
