package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwl.class */
final class bwl extends op {

    /* renamed from: a  reason: collision with root package name */
    private bsn<os, buh> f25275a;

    private bwl(bwj bwjVar, bsn<os, buh> bsnVar) {
        this.f25275a = bsnVar;
    }

    @Override // com.google.android.gms.internal.ads.oq
    public final void a() throws RemoteException {
        this.f25275a.f25014c.e();
    }

    @Override // com.google.android.gms.internal.ads.oq
    public final void a(zzvh zzvhVar) throws RemoteException {
        this.f25275a.f25014c.a(zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.oq
    public final void a(String str) throws RemoteException {
        this.f25275a.f25014c.a(0, str);
    }
}
