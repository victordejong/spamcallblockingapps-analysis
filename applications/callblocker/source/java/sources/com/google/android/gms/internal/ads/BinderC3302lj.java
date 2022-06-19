package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.lj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lj.class */
public final class BinderC3302lj extends eaz {

    /* renamed from: a */
    private final Object f16908a = new Object();

    /* renamed from: b */
    private volatile ebb f16909b;

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7658a() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7657a(ebb ebbVar) {
        synchronized (this.f16908a) {
            this.f16909b = ebbVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7656a(boolean z) {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: b */
    public final void mo7655b() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: c */
    public final void mo7654c() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: d */
    public final boolean mo7653d() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: e */
    public final int mo7652e() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: f */
    public final float mo7651f() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: g */
    public final float mo7650g() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: h */
    public final ebb mo7649h() {
        ebb ebbVar;
        synchronized (this.f16908a) {
            ebbVar = this.f16909b;
        }
        return ebbVar;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: i */
    public final float mo7648i() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: j */
    public final boolean mo7647j() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: k */
    public final boolean mo7646k() {
        throw new RemoteException();
    }
}
