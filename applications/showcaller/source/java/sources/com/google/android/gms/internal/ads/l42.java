package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l42.class */
public final class l42 {

    /* renamed from: a */
    private final q42<xy0> f25927a;

    /* renamed from: b */
    private final String f25928b;

    /* renamed from: c */
    private AbstractC6491fu f25929c;

    public l42(q42<xy0> q42Var, String str) {
        this.f25927a = q42Var;
        this.f25928b = str;
    }

    /* renamed from: b */
    public final boolean m13730b() {
        boolean mo8957b;
        synchronized (this) {
            mo8957b = this.f25927a.mo8957b();
        }
        return mo8957b;
    }

    /* renamed from: c */
    public final void m13729c(zzbdg zzbdgVar, int i) {
        synchronized (this) {
            this.f25929c = null;
            this.f25927a.mo8958a(zzbdgVar, this.f25928b, new r42(i), new k42(this));
        }
    }

    /* renamed from: d */
    public final String m13728d() {
        String str;
        synchronized (this) {
            str = null;
            try {
                AbstractC6491fu abstractC6491fu = this.f25929c;
                if (abstractC6491fu != null) {
                    str = abstractC6491fu.mo12041a();
                }
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
                return null;
            }
        }
        return str;
    }

    /* renamed from: e */
    public final String m13727e() {
        String str;
        synchronized (this) {
            str = null;
            try {
                AbstractC6491fu abstractC6491fu = this.f25929c;
                if (abstractC6491fu != null) {
                    str = abstractC6491fu.mo12041a();
                }
            } catch (RemoteException e) {
                ei0.m15461i("#007 Could not call remote method.", e);
                return null;
            }
        }
        return str;
    }
}
