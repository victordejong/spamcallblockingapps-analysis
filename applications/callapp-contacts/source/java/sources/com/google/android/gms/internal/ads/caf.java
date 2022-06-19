package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/caf.class */
public final class caf {

    /* renamed from: a */
    emj f45195a;

    /* renamed from: b */
    boolean f45196b = false;

    /* renamed from: c */
    private final caj<anp> f45197c;

    /* renamed from: d */
    private final String f45198d;

    public caf(caj<anp> cajVar, String str) {
        this.f45197c = cajVar;
        this.f45198d = str;
    }

    /* renamed from: a */
    public final void m17526a(zzvq zzvqVar, int i) throws RemoteException {
        synchronized (this) {
            this.f45195a = null;
            this.f45196b = this.f45197c.mo17387a(zzvqVar, this.f45198d, new cak(i), new cae(this));
        }
    }

    /* renamed from: a */
    public final boolean m17527a() throws RemoteException {
        boolean mo17390a;
        synchronized (this) {
            mo17390a = this.f45197c.mo17390a();
        }
        return mo17390a;
    }

    /* renamed from: b */
    public final String m17525b() {
        synchronized (this) {
            try {
                emj emjVar = this.f45195a;
                if (emjVar == null) {
                    return null;
                }
                return emjVar.mo14783a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
    }

    /* renamed from: c */
    public final String m17524c() {
        synchronized (this) {
            try {
                emj emjVar = this.f45195a;
                if (emjVar == null) {
                    return null;
                }
                return emjVar.mo14783a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
    }
}
