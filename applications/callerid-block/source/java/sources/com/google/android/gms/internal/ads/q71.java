package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/q71.class */
public final class q71 {

    /* renamed from: a */
    private final v71<u30> f8196a;

    /* renamed from: b */
    private final String f8197b;
    @GuardedBy("this")

    /* renamed from: c */
    private AbstractC1794j1 f8198c;

    public q71(v71<u30> v71Var, String str) {
        this.f8196a = v71Var;
        this.f8197b = str;
    }

    /* renamed from: a */
    public final boolean m6119a() {
        boolean m5304b;
        synchronized (this) {
            m5304b = this.f8196a.m5304b();
        }
        return m5304b;
    }

    /* renamed from: b */
    public final void m6118b(zzys zzysVar, int i) {
        synchronized (this) {
            this.f8198c = null;
            this.f8196a.m5305a(zzysVar, this.f8197b, new w71(i), new p71(this));
        }
    }

    /* renamed from: c */
    public final String m6117c() {
        String str;
        synchronized (this) {
            str = null;
            try {
                AbstractC1794j1 abstractC1794j1 = this.f8198c;
                if (abstractC1794j1 != null) {
                    str = abstractC1794j1.m7055a();
                }
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
                return null;
            }
        }
        return str;
    }

    /* renamed from: d */
    public final String m6116d() {
        String str;
        synchronized (this) {
            str = null;
            try {
                AbstractC1794j1 abstractC1794j1 = this.f8198c;
                if (abstractC1794j1 != null) {
                    str = abstractC1794j1.m7055a();
                }
            } catch (RemoteException e) {
                C1894po.m6177i("#007 Could not call remote method.", e);
                return null;
            }
        }
        return str;
    }
}
