package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.C2391a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cgn.class */
final class cgn extends C2391a {

    /* renamed from: a */
    private final /* synthetic */ dzr f12942a;

    /* renamed from: b */
    private final /* synthetic */ cgl f12943b;

    public cgn(cgl cglVar, dzr dzrVar) {
        this.f12943b = cglVar;
        this.f12942a = dzrVar;
    }

    @Override // com.google.android.gms.ads.reward.C2391a
    /* renamed from: k_ */
    public final void mo11372k_() {
        bdr bdrVar;
        bdrVar = this.f12943b.f12937d;
        if (bdrVar != null) {
            try {
                this.f12942a.mo8128a();
            } catch (RemoteException e) {
                C3556uu.m6744e("#007 Could not call remote method.", e);
            }
        }
    }
}
