package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cah.class */
public final class cah {

    /* renamed from: a  reason: collision with root package name */
    final bcy f25486a;

    /* renamed from: b  reason: collision with root package name */
    final bza f25487b;

    /* renamed from: c  reason: collision with root package name */
    final arp f25488c;

    public cah(bcy bcyVar, cty ctyVar) {
        this.f25486a = bcyVar;
        final bza bzaVar = new bza(ctyVar);
        this.f25487b = bzaVar;
        final jf jfVar = bcyVar.e;
        this.f25488c = new arp(bzaVar, jfVar) { // from class: com.google.android.gms.internal.ads.cag

            /* renamed from: a  reason: collision with root package name */
            private final bza f25484a;

            /* renamed from: b  reason: collision with root package name */
            private final jf f25485b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25484a = bzaVar;
                this.f25485b = jfVar;
            }

            @Override // com.google.android.gms.internal.ads.arp
            public final void a(zzvh zzvhVar) {
                bza bzaVar2 = this.f25484a;
                jf jfVar2 = this.f25485b;
                bzaVar2.a(zzvhVar);
                if (jfVar2 != null) {
                    try {
                        jfVar2.a(zzvhVar);
                    } catch (RemoteException e) {
                        za.zze("#007 Could not call remote method.", e);
                    }
                }
                if (jfVar2 != null) {
                    try {
                        jfVar2.a(zzvhVar.errorCode);
                    } catch (RemoteException e2) {
                        za.zze("#007 Could not call remote method.", e2);
                    }
                }
            }
        };
    }
}
