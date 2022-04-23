package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import p131c.p161d.p170b.p224d.p252g.p253a.C3778lr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdaa.class */
public final class zzdaa {

    /* renamed from: a */
    public final zzdae<zzbqo> f26834a;

    /* renamed from: b */
    public final String f26835b;

    /* renamed from: c */
    public zzyn f26836c;

    /* renamed from: d */
    public boolean f26837d;

    public zzdaa(zzdae<zzbqo> zzdaeVar, String str) {
        this.f26834a = zzdaeVar;
        this.f26835b = str;
    }

    /* renamed from: a */
    public final String m13717a() {
        synchronized (this) {
            try {
                if (this.f26836c == null) {
                    return null;
                }
                return this.f26836c.mo11114a();
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
                return null;
            }
        }
    }

    /* renamed from: a */
    public final void m13714a(zzvg zzvgVar, int i) throws RemoteException {
        synchronized (this) {
            this.f26836c = null;
            this.f26834a.mo13489a(zzvgVar, this.f26835b, new zzdaf(i), new C3778lr(this));
        }
    }

    /* renamed from: b */
    public final boolean m13713b() throws RemoteException {
        boolean n;
        synchronized (this) {
            n = this.f26834a.mo13485n();
        }
        return n;
    }

    /* renamed from: c */
    public final String m13712c() {
        synchronized (this) {
            try {
                if (this.f26836c == null) {
                    return null;
                }
                return this.f26836c.mo11114a();
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
                return null;
            }
        }
    }
}
