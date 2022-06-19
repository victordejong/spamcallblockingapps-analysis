package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.support.p008v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.internal.ads.beb;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvi.class */
public final class cvi implements AbstractC12025d.AbstractC12026a, AbstractC12025d.AbstractC12027b {

    /* renamed from: a */
    private cwh f46618a;

    /* renamed from: b */
    private final String f46619b;

    /* renamed from: c */
    private final String f46620c;

    /* renamed from: d */
    private final LinkedBlockingQueue<beb.C12217a> f46621d = new LinkedBlockingQueue<>();

    /* renamed from: e */
    private final HandlerThread f46622e;

    public cvi(Context context, String str, String str2) {
        this.f46619b = str;
        this.f46620c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.f46622e = handlerThread;
        handlerThread.start();
        this.f46618a = new cwh(context, handlerThread.getLooper(), this, this, 9200000);
        this.f46618a.checkAvailabilityAndConnect();
    }

    /* renamed from: c */
    private final cwm m17174c() {
        try {
            return this.f46618a.m17131a();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: d */
    private final void m17173d() {
        cwh cwhVar = this.f46618a;
        if (cwhVar != null) {
            if (!cwhVar.isConnected() && !this.f46618a.isConnecting()) {
                return;
            }
            this.f46618a.disconnect();
        }
    }

    /* renamed from: e */
    private static beb.C12217a m17172e() {
        return beb.C12217a.m18096c().m18023j(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID).mo16259f();
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        cwm m17174c = m17174c();
        if (m17174c != null) {
            try {
                this.f46621d.put(m17174c.mo17129a(new zzdwh(this.f46619b, this.f46620c)).zzazh());
                m17173d();
                this.f46622e.quit();
            } catch (Throwable th) {
                try {
                    this.f46621d.put(m17172e());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    m17173d();
                    this.f46622e.quit();
                    throw th2;
                }
                m17173d();
                this.f46622e.quit();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11763a(int i) {
        try {
            this.f46621d.put(m17172e());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
        try {
            this.f46621d.put(m17172e());
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: b */
    public final beb.C12217a m17175b() {
        beb.C12217a c12217a;
        try {
            c12217a = this.f46621d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            c12217a = null;
        }
        beb.C12217a c12217a2 = c12217a;
        if (c12217a == null) {
            c12217a2 = m17172e();
        }
        return c12217a2;
    }
}
