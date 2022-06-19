package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.AbstractC12025d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egn.class */
public final class egn {

    /* renamed from: a */
    final Runnable f48996a = new egq(this);

    /* renamed from: b */
    final Object f48997b = new Object();

    /* renamed from: c */
    egu f48998c;

    /* renamed from: d */
    egy f48999d;

    /* renamed from: e */
    private Context f49000e;

    /* renamed from: a */
    private final egu m15064a(AbstractC12025d.AbstractC12026a abstractC12026a, AbstractC12025d.AbstractC12027b abstractC12027b) {
        egu eguVar;
        synchronized (this) {
            eguVar = new egu(this.f49000e, zzr.zzlj().zzaai(), abstractC12026a, abstractC12027b);
        }
        return eguVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m15063a(egn egnVar) {
        synchronized (egnVar.f48997b) {
            egu eguVar = egnVar.f48998c;
            if (eguVar == null) {
                return;
            }
            if (eguVar.isConnected() || egnVar.f48998c.isConnecting()) {
                egnVar.f48998c.disconnect();
            }
            egnVar.f48998c = null;
            egnVar.f48999d = null;
            Binder.flushPendingCommands();
        }
    }

    /* renamed from: a */
    public final zzth m15062a(zzti zztiVar) {
        synchronized (this.f48997b) {
            if (this.f48999d == null) {
                return new zzth();
            }
            try {
                if (this.f48998c.m15058b()) {
                    return this.f48999d.mo15056b(zztiVar);
                }
                return this.f48999d.mo15057a(zztiVar);
            } catch (RemoteException e) {
                zzd.zzc("Unable to call into cache service.", e);
                return new zzth();
            }
        }
    }

    /* renamed from: a */
    public final void m15066a() {
        synchronized (this.f48997b) {
            if (this.f49000e != null && this.f48998c == null) {
                egu m15064a = m15064a(new egs(this), new egr(this));
                this.f48998c = m15064a;
                m15064a.checkAvailabilityAndConnect();
            }
        }
    }

    /* renamed from: a */
    public final void m15065a(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f48997b) {
            if (this.f49000e != null) {
                return;
            }
            this.f49000e = context.getApplicationContext();
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42780ck)).booleanValue()) {
                m15066a();
            } else {
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42779cj)).booleanValue()) {
                    zzr.zzky().m15113a(new egp(this));
                }
            }
        }
    }

    /* renamed from: b */
    public final long m15061b(zzti zztiVar) {
        synchronized (this.f48997b) {
            if (this.f48999d == null) {
                return -2L;
            }
            if (this.f48998c.m15058b()) {
                try {
                    return this.f48999d.mo15055c(zztiVar);
                } catch (RemoteException e) {
                    zzd.zzc("Unable to call into cache service.", e);
                }
            }
            return -2L;
        }
    }
}
