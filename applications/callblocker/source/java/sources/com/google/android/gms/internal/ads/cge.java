package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.C2391a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cge.class */
final class cge extends C2391a {

    /* renamed from: a */
    private final /* synthetic */ eap f12919a;

    /* renamed from: b */
    private final /* synthetic */ cgf f12920b;

    public cge(cgf cgfVar, eap eapVar) {
        this.f12920b = cgfVar;
        this.f12919a = eapVar;
    }

    @Override // com.google.android.gms.ads.reward.C2391a
    /* renamed from: k_ */
    public final void mo11372k_() {
        bdr bdrVar;
        bdrVar = this.f12920b.f12926f;
        if (bdrVar != null) {
            try {
                this.f12919a.mo8098a();
            } catch (RemoteException e) {
                C3556uu.m6744e("#007 Could not call remote method.", e);
            }
        }
    }
}
