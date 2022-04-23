package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/buy.class */
final class buy extends oj {

    /* renamed from: a  reason: collision with root package name */
    private bsn<os, buh> f25170a;

    private buy(buw buwVar, bsn<os, buh> bsnVar) {
        this.f25170a = bsnVar;
    }

    @Override // com.google.android.gms.internal.ads.ok
    public final void a() throws RemoteException {
        this.f25170a.f25014c.e();
    }

    @Override // com.google.android.gms.internal.ads.ok
    public final void a(zzvh zzvhVar) throws RemoteException {
        this.f25170a.f25014c.a(zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.ok
    public final void a(String str) throws RemoteException {
        this.f25170a.f25014c.a(0, str);
    }
}
