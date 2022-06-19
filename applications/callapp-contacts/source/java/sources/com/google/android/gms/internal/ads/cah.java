package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cah.class */
public final class cah {

    /* renamed from: a */
    final bcy f45201a;

    /* renamed from: b */
    final bza f45202b;

    /* renamed from: c */
    final arp f45203c;

    public cah(bcy bcyVar, cty ctyVar) {
        this.f45201a = bcyVar;
        bza bzaVar = new bza(ctyVar);
        this.f45202b = bzaVar;
        this.f45203c = new arp(bzaVar, bcyVar.f43612e) { // from class: com.google.android.gms.internal.ads.cag

            /* renamed from: a */
            private final bza f45199a;

            /* renamed from: b */
            private final AbstractC12658jf f45200b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45199a = bzaVar;
                this.f45200b = abstractC12658jf;
            }

            @Override // com.google.android.gms.internal.ads.arp
            /* renamed from: a */
            public final void mo17319a(zzvh zzvhVar) {
                bza bzaVar2 = this.f45199a;
                AbstractC12658jf abstractC12658jf2 = this.f45200b;
                bzaVar2.mo17319a(zzvhVar);
                if (abstractC12658jf2 != null) {
                    try {
                        abstractC12658jf2.mo14578a(zzvhVar);
                    } catch (RemoteException e) {
                        C13088za.zze("#007 Could not call remote method.", e);
                    }
                }
                if (abstractC12658jf2 != null) {
                    try {
                        abstractC12658jf2.mo14580a(zzvhVar.errorCode);
                    } catch (RemoteException e2) {
                        C13088za.zze("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }
}
