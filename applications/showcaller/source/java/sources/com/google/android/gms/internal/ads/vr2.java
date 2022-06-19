package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC6113d;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vr2.class */
final class vr2 implements AbstractC6113d.AbstractC6114a, AbstractC6113d.AbstractC6115b {

    /* renamed from: a */
    protected final ss2 f31328a;

    /* renamed from: b */
    private final String f31329b;

    /* renamed from: c */
    private final String f31330c;

    /* renamed from: e */
    private final HandlerThread f31332e;

    /* renamed from: f */
    private final mr2 f31333f;

    /* renamed from: h */
    private final int f31335h;

    /* renamed from: g */
    private final long f31334g = System.currentTimeMillis();

    /* renamed from: d */
    private final LinkedBlockingQueue<zzfkb> f31331d = new LinkedBlockingQueue<>();

    public vr2(Context context, int i, int i2, String str, String str2, String str3, mr2 mr2Var) {
        this.f31329b = str;
        this.f31335h = i2;
        this.f31330c = str2;
        this.f31333f = mr2Var;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f31332e = handlerThread;
        handlerThread.start();
        ss2 ss2Var = new ss2(context, handlerThread.getLooper(), this, this, 19621000);
        this.f31328a = ss2Var;
        ss2Var.m17093q();
    }

    /* renamed from: c */
    static zzfkb m9872c() {
        return new zzfkb(null, 1);
    }

    /* renamed from: e */
    private final void m9870e(int i, long j, Exception exc) {
        this.f31333f.m13100c(i, System.currentTimeMillis() - j, exc);
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6115b
    /* renamed from: D0 */
    public final void mo6338D0(ConnectionResult connectionResult) {
        try {
            m9870e(4012, this.f31334g, null);
            this.f31331d.put(m9872c());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: J0 */
    public final void mo6337J0(Bundle bundle) {
        vs2 m9871d = m9871d();
        if (m9871d != null) {
            try {
                zzfkb m9869A4 = m9871d.m9869A4(new zzfjz(1, this.f31335h, this.f31329b, this.f31330c));
                m9870e(5011, this.f31334g, null);
                this.f31331d.put(m9869A4);
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    /* renamed from: a */
    public final zzfkb m9874a(int i) {
        zzfkb zzfkbVar;
        try {
            zzfkbVar = this.f31331d.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            m9870e(2009, this.f31334g, e);
            zzfkbVar = null;
        }
        m9870e(3004, this.f31334g, null);
        if (zzfkbVar != null) {
            if (zzfkbVar.f34021f == 7) {
                mr2.m13096g(3);
            } else {
                mr2.m13096g(2);
            }
        }
        return zzfkbVar == null ? m9872c() : zzfkbVar;
    }

    /* renamed from: b */
    public final void m9873b() {
        ss2 ss2Var = this.f31328a;
        if (ss2Var != null) {
            if (!ss2Var.m17110b() && !this.f31328a.m17103f()) {
                return;
            }
            this.f31328a.m17112a();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC6113d.AbstractC6114a
    /* renamed from: c0 */
    public final void mo6333c0(int i) {
        try {
            m9870e(4011, this.f31334g, null);
            this.f31331d.put(m9872c());
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: d */
    protected final vs2 m9871d() {
        try {
            return this.f31328a.m10916i0();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }
}
