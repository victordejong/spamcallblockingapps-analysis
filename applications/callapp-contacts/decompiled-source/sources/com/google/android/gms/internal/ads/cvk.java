package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.facebook.ads.AdError;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.internal.ads.aut;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvk.class */
final class cvk implements d.a, d.b {

    /* renamed from: a  reason: collision with root package name */
    private cwh f26465a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26466b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26467c;

    /* renamed from: d  reason: collision with root package name */
    private final duu f26468d;
    private final HandlerThread g;
    private final cuy h;
    private final int e = 1;
    private final long i = System.currentTimeMillis();
    private final LinkedBlockingQueue<zzdwt> f = new LinkedBlockingQueue<>();

    public cvk(Context context, int i, duu duuVar, String str, String str2, String str3, cuy cuyVar) {
        this.f26466b = str;
        this.f26468d = duuVar;
        this.f26467c = str2;
        this.h = cuyVar;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.g = handlerThread;
        handlerThread.start();
        this.f26465a = new cwh(context, handlerThread.getLooper(), this, this, 19621000);
        this.f26465a.checkAvailabilityAndConnect();
    }

    private final void a(int i, long j, Exception exc) {
        cuy cuyVar = this.h;
        if (cuyVar != null) {
            cuyVar.a(i, System.currentTimeMillis() - j, exc);
        }
    }

    private final cwm c() {
        try {
            return this.f26465a.a();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    private final void d() {
        cwh cwhVar = this.f26465a;
        if (cwhVar == null) {
            return;
        }
        if (cwhVar.isConnected() || this.f26465a.isConnecting()) {
            this.f26465a.disconnect();
        }
    }

    private static zzdwt e() {
        return new zzdwt(null, 1);
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        cwm c2 = c();
        if (c2 != null) {
            try {
                zzdwt a2 = c2.a(new zzdwr(this.e, this.f26468d, this.f26466b, this.f26467c));
                a(5011, this.i, null);
                this.f.put(a2);
            } catch (Throwable th) {
                try {
                    a(2010, this.i, new Exception(th));
                } finally {
                    d();
                    this.g.quit();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        try {
            a(4011, this.i, null);
            this.f.put(e());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        try {
            a(4012, this.i, null);
            this.f.put(e());
        } catch (InterruptedException e) {
        }
    }

    public final zzdwt b() {
        zzdwt zzdwtVar;
        try {
            zzdwtVar = this.f.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            a(AdError.INTERSTITIAL_AD_TIMEOUT, this.i, e);
            zzdwtVar = null;
        }
        a(3004, this.i, null);
        if (zzdwtVar != null) {
            if (zzdwtVar.status == 7) {
                cuy.a(aut.a.c.DISABLED);
            } else {
                cuy.a(aut.a.c.ENABLED);
            }
        }
        return zzdwtVar == null ? e() : zzdwtVar;
    }
}
