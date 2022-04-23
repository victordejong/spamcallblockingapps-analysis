package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byz.class */
public final class byz extends ekn {

    /* renamed from: a  reason: collision with root package name */
    private final caf f25433a;

    public byz(Context context, afq afqVar, cpq cpqVar, bcy bcyVar, eki ekiVar) {
        cah cahVar = new cah(bcyVar, afqVar.a());
        cahVar.f25487b.a(ekiVar);
        this.f25433a = new caf(new can(afqVar, context, cahVar, cpqVar), cpqVar.f26231d);
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final void a(zzvq zzvqVar) throws RemoteException {
        this.f25433a.a(zzvqVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final void a(zzvq zzvqVar, int i) throws RemoteException {
        synchronized (this) {
            this.f25433a.a(zzvqVar, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final boolean a() throws RemoteException {
        boolean a2;
        synchronized (this) {
            a2 = this.f25433a.a();
        }
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final String b() {
        String b2;
        synchronized (this) {
            b2 = this.f25433a.b();
        }
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final String c() {
        String c2;
        synchronized (this) {
            c2 = this.f25433a.c();
        }
        return c2;
    }
}
