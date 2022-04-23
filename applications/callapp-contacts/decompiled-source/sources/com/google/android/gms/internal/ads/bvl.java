package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvl.class */
final class bvl extends oo {

    /* renamed from: a  reason: collision with root package name */
    private bsn<os, buh> f25202a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ bvj f25203b;

    private bvl(bvj bvjVar, bsn<os, buh> bsnVar) {
        this.f25203b = bvjVar;
        this.f25202a = bsnVar;
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a(nh nhVar) throws RemoteException {
        this.f25203b.f25195a = nhVar;
        this.f25202a.f25014c.e();
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a(zzvh zzvhVar) throws RemoteException {
        this.f25202a.f25014c.a(zzvhVar);
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a(String str) throws RemoteException {
        this.f25202a.f25014c.a(0, str);
    }
}
