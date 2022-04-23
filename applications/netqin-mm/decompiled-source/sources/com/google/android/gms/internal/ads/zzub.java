package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzub.class */
public final class zzub {

    /* renamed from: a */
    public final byte[] f28988a;

    /* renamed from: b */
    public int f28989b;

    /* renamed from: c */
    public int f28990c;

    /* renamed from: d */
    public final /* synthetic */ zztx f28991d;

    public zzub(zztx zztxVar, byte[] bArr) {
        this.f28991d = zztxVar;
        this.f28988a = bArr;
    }

    /* renamed from: a */
    public final zzub m11209a(int i) {
        this.f28989b = i;
        return this;
    }

    /* renamed from: a */
    public final void m11210a() {
        synchronized (this) {
            try {
                if (this.f28991d.f28985b) {
                    this.f28991d.f28984a.mo12074a(this.f28988a);
                    this.f28991d.f28984a.mo12071h(this.f28989b);
                    this.f28991d.f28984a.mo12070i(this.f28990c);
                    this.f28991d.f28984a.mo12073a((int[]) null);
                    this.f28991d.f28984a.mo12069m1();
                }
            } catch (RemoteException e) {
                zzbbq.m15857a("Clearcut log failed", e);
            }
        }
    }

    /* renamed from: b */
    public final zzub m11208b(int i) {
        this.f28990c = i;
        return this;
    }
}
