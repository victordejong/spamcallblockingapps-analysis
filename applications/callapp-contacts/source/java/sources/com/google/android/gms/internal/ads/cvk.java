package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.facebook.ads.AdError;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.internal.ads.aut;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvk.class */
final class cvk implements AbstractC12025d.AbstractC12026a, AbstractC12025d.AbstractC12027b {

    /* renamed from: a */
    private cwh f46623a;

    /* renamed from: b */
    private final String f46624b;

    /* renamed from: c */
    private final String f46625c;

    /* renamed from: d */
    private final duu f46626d;

    /* renamed from: g */
    private final HandlerThread f46629g;

    /* renamed from: h */
    private final cuy f46630h;

    /* renamed from: e */
    private final int f46627e = 1;

    /* renamed from: i */
    private final long f46631i = System.currentTimeMillis();

    /* renamed from: f */
    private final LinkedBlockingQueue<zzdwt> f46628f = new LinkedBlockingQueue<>();

    public cvk(Context context, int i, duu duuVar, String str, String str2, String str3, cuy cuyVar) {
        this.f46624b = str;
        this.f46626d = duuVar;
        this.f46625c = str2;
        this.f46630h = cuyVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.f46629g = handlerThread;
        handlerThread.start();
        this.f46623a = new cwh(context, handlerThread.getLooper(), this, this, 19621000);
        this.f46623a.checkAvailabilityAndConnect();
    }

    /* renamed from: a */
    private final void m17170a(int i, long j, Exception exc) {
        cuy cuyVar = this.f46630h;
        if (cuyVar != null) {
            cuyVar.m17192a(i, System.currentTimeMillis() - j, exc);
        }
    }

    /* renamed from: c */
    private final cwm m17168c() {
        try {
            return this.f46623a.m17131a();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: d */
    private final void m17167d() {
        cwh cwhVar = this.f46623a;
        if (cwhVar != null) {
            if (!cwhVar.isConnected() && !this.f46623a.isConnecting()) {
                return;
            }
            this.f46623a.disconnect();
        }
    }

    /* renamed from: e */
    private static zzdwt m17166e() {
        return new zzdwt(null, 1);
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        cwm m17168c = m17168c();
        if (m17168c != null) {
            try {
                zzdwt mo17128a = m17168c.mo17128a(new zzdwr(this.f46627e, this.f46626d, this.f46624b, this.f46625c));
                m17170a(5011, this.f46631i, null);
                this.f46628f.put(mo17128a);
            } catch (Throwable th) {
                try {
                    m17170a(2010, this.f46631i, new Exception(th));
                } finally {
                    m17167d();
                    this.f46629g.quit();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11763a(int i) {
        try {
            m17170a(4011, this.f46631i, null);
            this.f46628f.put(m17166e());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
        try {
            m17170a(4012, this.f46631i, null);
            this.f46628f.put(m17166e());
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: b */
    public final zzdwt m17169b() {
        zzdwt zzdwtVar;
        try {
            zzdwtVar = this.f46628f.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            m17170a(AdError.INTERSTITIAL_AD_TIMEOUT, this.f46631i, e);
            zzdwtVar = null;
        }
        m17170a(3004, this.f46631i, null);
        if (zzdwtVar != null) {
            if (zzdwtVar.status == 7) {
                cuy.m17185a(aut.C12193a.EnumC12197c.DISABLED);
            } else {
                cuy.m17185a(aut.C12193a.EnumC12197c.ENABLED);
            }
        }
        return zzdwtVar == null ? m17166e() : zzdwtVar;
    }
}
