package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvl.class */
final class bvl extends AbstractBinderC12803oo {

    /* renamed from: a */
    private bsn<AbstractC12807os, buh> f44858a;

    /* renamed from: b */
    private final /* synthetic */ bvj f44859b;

    /* JADX INFO: Access modifiers changed from: private */
    public bvl(bvj bvjVar, bsn<AbstractC12807os, buh> bsnVar) {
        this.f44859b = bvjVar;
        this.f44858a = bsnVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12800ol
    /* renamed from: a */
    public final void mo14297a(AbstractC12769nh abstractC12769nh) throws RemoteException {
        this.f44859b.f44851a = abstractC12769nh;
        this.f44858a.f44641c.mo14418e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12800ol
    /* renamed from: a */
    public final void mo14296a(zzvh zzvhVar) throws RemoteException {
        this.f44858a.f44641c.mo14427a(zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12800ol
    /* renamed from: a */
    public final void mo14295a(String str) throws RemoteException {
        this.f44858a.f44641c.mo14433a(0, str);
    }
}
