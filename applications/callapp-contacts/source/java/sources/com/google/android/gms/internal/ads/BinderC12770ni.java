package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ni */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ni.class */
public final class BinderC12770ni extends emn {

    /* renamed from: a */
    private final Object f49566a = new Object();

    /* renamed from: b */
    private volatile emp f49567b;

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14466a() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14465a(emp empVar) throws RemoteException {
        synchronized (this.f49566a) {
            this.f49567b = empVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14464a(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: b */
    public final void mo14463b() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: c */
    public final void mo14462c() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: d */
    public final boolean mo14461d() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: e */
    public final int mo14460e() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: f */
    public final float mo14459f() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: g */
    public final float mo14458g() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: h */
    public final emp mo14457h() throws RemoteException {
        emp empVar;
        synchronized (this.f49566a) {
            empVar = this.f49567b;
        }
        return empVar;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: i */
    public final float mo14456i() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: j */
    public final boolean mo14455j() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: k */
    public final boolean mo14454k() throws RemoteException {
        throw new RemoteException();
    }
}
