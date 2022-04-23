package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import com.google.android.gms.common.internal.AbstractC1566b;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fv2.class */
public final class fv2 {

    /* renamed from: a */
    private final Runnable f6596a = new bv2(this);

    /* renamed from: b */
    private final Object f6597b = new Object();
    @GuardedBy("lock")

    /* renamed from: c */
    private hv2 f6598c;
    @GuardedBy("lock")

    /* renamed from: d */
    private Context f6599d;
    @GuardedBy("lock")

    /* renamed from: e */
    private jv2 f6600e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ void m7434f(fv2 fv2Var) {
        synchronized (fv2Var.f6597b) {
            hv2 hv2Var = fv2Var.f6598c;
            if (hv2Var != null) {
                if (hv2Var.m8382v() || fv2Var.f6598c.m8381w()) {
                    fv2Var.f6598c.m8399e();
                }
                fv2Var.f6598c = null;
                fv2Var.f6600e = null;
                Binder.flushPendingCommands();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public final void m7428l() {
        synchronized (this.f6597b) {
            if (this.f6599d != null && this.f6598c == null) {
                hv2 e = m7435e(new dv2(this), new ev2(this));
                this.f6598c = e;
                e.m8403a();
            }
        }
    }

    /* renamed from: a */
    public final void m7439a(Context context) {
        if (context != null) {
            synchronized (this.f6597b) {
                if (this.f6599d == null) {
                    this.f6599d = context.getApplicationContext();
                    if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7401e2)).booleanValue()) {
                        m7428l();
                    } else {
                        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7394d2)).booleanValue()) {
                            C1407r.m8917g().m5587b(new cv2(this));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final void m7438b() {
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7408f2)).booleanValue()) {
            synchronized (this.f6597b) {
                m7428l();
                tv1 tv1Var = C1433l1.f5594i;
                tv1Var.removeCallbacks(this.f6596a);
                tv1Var.postDelayed(this.f6596a, ((Long) C1674c.m7906c().m6878b(C1842m3.f7415g2)).longValue());
            }
        }
    }

    /* renamed from: c */
    public final zztp m7437c(zzts zztsVar) {
        synchronized (this.f6597b) {
            if (this.f6600e == null) {
                return new zztp();
            }
            try {
                if (this.f6598c.W()) {
                    return this.f6600e.M4(zztsVar);
                }
                return this.f6600e.w4(zztsVar);
            } catch (RemoteException e) {
                C1894po.m6182d("Unable to call into cache service.", e);
                return new zztp();
            }
        }
    }

    /* renamed from: d */
    public final long m7436d(zzts zztsVar) {
        synchronized (this.f6597b) {
            if (this.f6600e == null) {
                return -2L;
            }
            if (this.f6598c.W()) {
                try {
                    return this.f6600e.T4(zztsVar);
                } catch (RemoteException e) {
                    C1894po.m6182d("Unable to call into cache service.", e);
                }
            }
            return -2L;
        }
    }

    /* renamed from: e */
    protected final hv2 m7435e(AbstractC1566b.AbstractC1567a aVar, AbstractC1566b.AbstractC1568b bVar) {
        hv2 hv2Var;
        synchronized (this) {
            hv2Var = new hv2(this.f6599d, C1407r.m8906r().m8824a(), aVar, bVar);
        }
        return hv2Var;
    }
}
