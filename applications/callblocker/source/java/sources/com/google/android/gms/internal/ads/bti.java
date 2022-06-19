package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bti.class */
public final class bti {

    /* renamed from: a */
    private final btm<amh> f12229a;

    /* renamed from: b */
    private final String f12230b;
    @GuardedBy("this")

    /* renamed from: c */
    private eav f12231c;
    @GuardedBy("this")

    /* renamed from: d */
    private boolean f12232d = false;

    public bti(btm<amh> btmVar, String str) {
        this.f12229a = btmVar;
        this.f12230b = str;
    }

    /* renamed from: a */
    public final void m11644a(dya dyaVar, int i) {
        synchronized (this) {
            this.f12231c = null;
            this.f12232d = this.f12229a.mo11391a(dyaVar, this.f12230b, new btn(i), new bth(this));
        }
    }

    /* renamed from: a */
    public final boolean m11647a() {
        boolean mo11396a;
        synchronized (this) {
            mo11396a = this.f12229a.mo11396a();
        }
        return mo11396a;
    }

    /* renamed from: b */
    public final String m11643b() {
        String str;
        synchronized (this) {
            str = null;
            try {
                if (this.f12231c != null) {
                    str = this.f12231c.mo8095a();
                }
            } catch (RemoteException e) {
                C3556uu.m6744e("#007 Could not call remote method.", e);
                str = null;
            }
        }
        return str;
    }

    /* renamed from: c */
    public final String m11642c() {
        String str;
        synchronized (this) {
            str = null;
            try {
                if (this.f12231c != null) {
                    str = this.f12231c.mo8095a();
                }
            } catch (RemoteException e) {
                C3556uu.m6744e("#007 Could not call remote method.", e);
                str = null;
            }
        }
        return str;
    }
}
