package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import p131c.p161d.p170b.p224d.p252g.p253a.eg0;
import p131c.p161d.p170b.p224d.p252g.p253a.fg0;
import p131c.p161d.p170b.p224d.p252g.p253a.gg0;
import p131c.p161d.p170b.p224d.p252g.p253a.hg0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsw.class */
public final class zzsw {

    /* renamed from: a */
    public final Runnable f28962a = new eg0(this);

    /* renamed from: b */
    public final Object f28963b = new Object();

    /* renamed from: c */
    public zztb f28964c;

    /* renamed from: d */
    public Context f28965d;

    /* renamed from: e */
    public zztf f28966e;

    /* renamed from: a */
    public final zzsz m11452a(zzte zzteVar) {
        synchronized (this.f28963b) {
            if (this.f28966e == null) {
                return new zzsz();
            }
            try {
                return this.f28966e.mo11436a(zzteVar);
            } catch (RemoteException e) {
                zzbbq.m15855b("Unable to call into cache service.", e);
                return new zzsz();
            }
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final zztb m11456a(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        zztb zztbVar;
        synchronized (this) {
            zztbVar = new zztb(this.f28965d, zzp.m17955q().m15947b(), baseConnectionCallbacks, baseOnConnectionFailedListener);
        }
        return zztbVar;
    }

    /* renamed from: a */
    public final void m11458a() {
        synchronized (this.f28963b) {
            if (this.f28965d != null && this.f28964c == null) {
                zztb a = m11456a(new fg0(this), new hg0(this));
                this.f28964c = a;
                a.m17350p();
            }
        }
    }

    /* renamed from: a */
    public final void m11457a(Context context) {
        if (context != null) {
            synchronized (this.f28963b) {
                if (this.f28965d == null) {
                    this.f28965d = context.getApplicationContext();
                    if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23735R1)).booleanValue()) {
                        m11458a();
                    } else {
                        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23730Q1)).booleanValue()) {
                            zzp.m17966f().m11509a(new gg0(this));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final void m11451b() {
        synchronized (this.f28963b) {
            if (this.f28964c != null) {
                if (this.f28964c.m17365c() || this.f28964c.m17358g()) {
                    this.f28964c.mo10491b();
                }
                this.f28964c = null;
                this.f28966e = null;
                Binder.flushPendingCommands();
            }
        }
    }

    /* renamed from: c */
    public final void m11449c() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23740S1)).booleanValue()) {
            synchronized (this.f28963b) {
                m11458a();
                zzp.m17969c();
                zzayu.f24665h.removeCallbacks(this.f28962a);
                zzp.m17969c();
                zzayu.f24665h.postDelayed(this.f28962a, ((Long) zzwm.m11166e().m16921a(zzabb.f23745T1)).longValue());
            }
        }
    }
}
