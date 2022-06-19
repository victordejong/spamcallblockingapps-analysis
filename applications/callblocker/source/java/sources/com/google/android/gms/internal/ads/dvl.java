package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.internal.AbstractC2623c;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvl.class */
public final class dvl {

    /* renamed from: a */
    private final Runnable f15844a = new dvp(this);

    /* renamed from: b */
    private final Object f15845b = new Object();
    @GuardedBy("lock")

    /* renamed from: c */
    private dvv f15846c;
    @GuardedBy("lock")

    /* renamed from: d */
    private Context f15847d;
    @GuardedBy("lock")

    /* renamed from: e */
    private dvz f15848e;

    /* renamed from: a */
    private final dvv m8501a(AbstractC2623c.AbstractC2624a abstractC2624a, AbstractC2623c.AbstractC2625b abstractC2625b) {
        dvv dvvVar;
        synchronized (this) {
            dvvVar = new dvv(this.f15847d, C2341q.m14730q().m6841a(), abstractC2624a, abstractC2625b);
        }
        return dvvVar;
    }

    /* renamed from: b */
    public final void m8496b() {
        synchronized (this.f15845b) {
            if (this.f15847d == null || this.f15846c != null) {
                return;
            }
            this.f15846c = m8501a(new dvr(this), new dvq(this));
            this.f15846c.m14072o();
        }
    }

    /* renamed from: c */
    public final void m8494c() {
        synchronized (this.f15845b) {
            if (this.f15846c == null) {
                return;
            }
            if (this.f15846c.m14081f() || this.f15846c.m14079g()) {
                this.f15846c.m14083e();
            }
            this.f15846c = null;
            this.f15848e = null;
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: a */
    public final dvt m8497a(dvu dvuVar) {
        dvt dvtVar;
        synchronized (this.f15845b) {
            if (this.f15848e == null) {
                dvtVar = new dvt();
            } else {
                try {
                    dvtVar = this.f15848e.mo8483a(dvuVar);
                } catch (RemoteException e) {
                    C3556uu.m6748c("Unable to call into cache service.", e);
                    dvtVar = new dvt();
                }
            }
        }
        return dvtVar;
    }

    /* renamed from: a */
    public final void m8503a() {
        if (((Boolean) dyx.m8158e().m7876a(edi.f16406bL)).booleanValue()) {
            synchronized (this.f15845b) {
                m8496b();
                C2341q.m14744c();
                C3567ve.f17498a.removeCallbacks(this.f15844a);
                C2341q.m14744c();
                C3567ve.f17498a.postDelayed(this.f15844a, ((Long) dyx.m8158e().m7876a(edi.f16407bM)).longValue());
            }
        }
    }

    /* renamed from: a */
    public final void m8502a(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f15845b) {
            if (this.f15847d != null) {
                return;
            }
            this.f15847d = context.getApplicationContext();
            if (((Boolean) dyx.m8158e().m7876a(edi.f16405bK)).booleanValue()) {
                m8496b();
            } else {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16404bJ)).booleanValue()) {
                    C2341q.m14741f().m8565a(new dvn(this));
                }
            }
        }
    }
}
