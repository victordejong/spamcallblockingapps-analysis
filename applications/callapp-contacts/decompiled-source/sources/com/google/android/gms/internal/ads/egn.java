package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egn.class */
public final class egn {

    /* renamed from: a  reason: collision with root package name */
    final Runnable f27811a = new egq(this);

    /* renamed from: b  reason: collision with root package name */
    final Object f27812b = new Object();

    /* renamed from: c  reason: collision with root package name */
    egu f27813c;

    /* renamed from: d  reason: collision with root package name */
    egy f27814d;
    private Context e;

    private final egu a(d.a aVar, d.b bVar) {
        egu eguVar;
        synchronized (this) {
            eguVar = new egu(this.e, zzr.zzlj().zzaai(), aVar, bVar);
        }
        return eguVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(egn egnVar) {
        synchronized (egnVar.f27812b) {
            egu eguVar = egnVar.f27813c;
            if (eguVar != null) {
                if (eguVar.isConnected() || egnVar.f27813c.isConnecting()) {
                    egnVar.f27813c.disconnect();
                }
                egnVar.f27813c = null;
                egnVar.f27814d = null;
                Binder.flushPendingCommands();
            }
        }
    }

    public final zzth a(zzti zztiVar) {
        synchronized (this.f27812b) {
            if (this.f27814d == null) {
                return new zzth();
            }
            try {
                if (this.f27813c.b()) {
                    return this.f27814d.b(zztiVar);
                }
                return this.f27814d.a(zztiVar);
            } catch (RemoteException e) {
                zzd.zzc("Unable to call into cache service.", e);
                return new zzth();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        synchronized (this.f27812b) {
            if (this.e != null && this.f27813c == null) {
                egu a2 = a(new egs(this), new egr(this));
                this.f27813c = a2;
                a2.checkAvailabilityAndConnect();
            }
        }
    }

    public final void a(Context context) {
        if (context != null) {
            synchronized (this.f27812b) {
                if (this.e == null) {
                    this.e = context.getApplicationContext();
                    if (((Boolean) ekb.e().a(aq.ck)).booleanValue()) {
                        a();
                    } else {
                        if (((Boolean) ekb.e().a(aq.cj)).booleanValue()) {
                            zzr.zzky().a(new egp(this));
                        }
                    }
                }
            }
        }
    }

    public final long b(zzti zztiVar) {
        synchronized (this.f27812b) {
            if (this.f27814d == null) {
                return -2L;
            }
            if (this.f27813c.b()) {
                try {
                    return this.f27814d.c(zztiVar);
                } catch (RemoteException e) {
                    zzd.zzc("Unable to call into cache service.", e);
                }
            }
            return -2L;
        }
    }
}
