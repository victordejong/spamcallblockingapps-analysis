package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tr2.class */
final class tr2 implements AbstractC6113d.AbstractC6114a, AbstractC6113d.AbstractC6115b {

    /* renamed from: a */
    protected final ss2 f30327a;

    /* renamed from: b */
    private final String f30328b;

    /* renamed from: c */
    private final String f30329c;

    /* renamed from: d */
    private final LinkedBlockingQueue<z14> f30330d = new LinkedBlockingQueue<>();

    /* renamed from: e */
    private final HandlerThread f30331e;

    public tr2(Context context, String str, String str2) {
        this.f30328b = str;
        this.f30329c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.f30331e = handlerThread;
        handlerThread.start();
        ss2 ss2Var = new ss2(context, handlerThread.getLooper(), this, this, 9200000);
        this.f30327a = ss2Var;
        ss2Var.m17093q();
    }

    /* renamed from: c */
    static z14 m10514c() {
        j14 m8561z0 = z14.m8561z0();
        m8561z0.m14211h0(32768L);
        return m8561z0.m15512n();
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
        try {
            this.f30330d.put(m10514c());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        vs2 m10513d = m10513d();
        if (m10513d != null) {
            try {
                this.f30330d.put(m10513d.m9868a3(new zzfjq(this.f30328b, this.f30329c)).m7871k0());
            } catch (Throwable th) {
                try {
                    this.f30330d.put(m10514c());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    m10515b();
                    this.f30331e.quit();
                    throw th2;
                }
            }
            m10515b();
            this.f30331e.quit();
        }
    }

    /* renamed from: a */
    public final z14 m10516a(int i) {
        z14 z14Var;
        try {
            z14Var = this.f30330d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            z14Var = null;
        }
        z14 z14Var2 = z14Var;
        if (z14Var == null) {
            z14Var2 = m10514c();
        }
        return z14Var2;
    }

    /* renamed from: b */
    public final void m10515b() {
        ss2 ss2Var = this.f30327a;
        if (ss2Var != null) {
            if (!ss2Var.m17110b() && !this.f30327a.m17103f()) {
                return;
            }
            this.f30327a.m17112a();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: c0 */
    public final void mo6333c0(int i) {
        try {
            this.f30330d.put(m10514c());
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: d */
    protected final vs2 m10513d() {
        try {
            return this.f30327a.m10916i0();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }
}
