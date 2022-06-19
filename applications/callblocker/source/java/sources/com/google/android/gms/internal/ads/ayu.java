package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ayu.class */
public final class ayu extends eaz {

    /* renamed from: a */
    private final Object f10646a = new Object();
    @Nullable

    /* renamed from: b */
    private eba f10647b;
    @Nullable

    /* renamed from: c */
    private final AbstractC3297le f10648c;

    public ayu(@Nullable eba ebaVar, @Nullable AbstractC3297le abstractC3297le) {
        this.f10647b = ebaVar;
        this.f10648c = abstractC3297le;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7658a() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: a */
    public final void mo7657a(ebb ebbVar) {
        synchronized (this.f10646a) {
            if (this.f10647b != null) {
                this.f10647b.mo7657a(ebbVar);
            }
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
        return this.f10648c != null ? this.f10648c.mo7473t() : 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: g */
    public final float mo7650g() {
        return this.f10648c != null ? this.f10648c.mo7472u() : 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.eba
    /* renamed from: h */
    public final ebb mo7649h() {
        ebb mo7649h;
        synchronized (this.f10646a) {
            mo7649h = this.f10647b != null ? this.f10647b.mo7649h() : null;
        }
        return mo7649h;
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
