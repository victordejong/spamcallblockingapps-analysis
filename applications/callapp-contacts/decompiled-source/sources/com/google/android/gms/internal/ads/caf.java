package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/caf.class */
public final class caf {

    /* renamed from: a  reason: collision with root package name */
    emj f25480a;

    /* renamed from: b  reason: collision with root package name */
    boolean f25481b = false;

    /* renamed from: c  reason: collision with root package name */
    private final caj<anp> f25482c;

    /* renamed from: d  reason: collision with root package name */
    private final String f25483d;

    public caf(caj<anp> cajVar, String str) {
        this.f25482c = cajVar;
        this.f25483d = str;
    }

    public final void a(zzvq zzvqVar, int i) throws RemoteException {
        synchronized (this) {
            this.f25480a = null;
            this.f25481b = this.f25482c.a(zzvqVar, this.f25483d, new cak(i), new cae(this));
        }
    }

    public final boolean a() throws RemoteException {
        boolean a2;
        synchronized (this) {
            a2 = this.f25482c.a();
        }
        return a2;
    }

    public final String b() {
        synchronized (this) {
            try {
                emj emjVar = this.f25480a;
                if (emjVar == null) {
                    return null;
                }
                return emjVar.a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
    }

    public final String c() {
        synchronized (this) {
            try {
                emj emjVar = this.f25480a;
                if (emjVar == null) {
                    return null;
                }
                return emjVar.a();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
    }
}
