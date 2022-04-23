package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ni.class */
public final class ni extends emn {

    /* renamed from: a  reason: collision with root package name */
    private final Object f28213a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private volatile emp f28214b;

    @Override // com.google.android.gms.internal.ads.emk
    public final void a() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a(emp empVar) throws RemoteException {
        synchronized (this.f28213a) {
            this.f28214b = empVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void a(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void b() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final void c() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean d() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final int e() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float f() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float g() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final emp h() throws RemoteException {
        emp empVar;
        synchronized (this.f28213a) {
            empVar = this.f28214b;
        }
        return empVar;
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final float i() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean j() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    public final boolean k() throws RemoteException {
        throw new RemoteException();
    }
}
