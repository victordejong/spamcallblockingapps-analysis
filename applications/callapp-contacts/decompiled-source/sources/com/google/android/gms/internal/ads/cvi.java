package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.internal.ads.beb;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvi.class */
public final class cvi implements d.a, d.b {

    /* renamed from: a  reason: collision with root package name */
    private cwh f26461a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26462b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26463c;

    /* renamed from: d  reason: collision with root package name */
    private final LinkedBlockingQueue<beb.a> f26464d = new LinkedBlockingQueue<>();
    private final HandlerThread e;

    public cvi(Context context, String str, String str2) {
        this.f26462b = str;
        this.f26463c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.e = handlerThread;
        handlerThread.start();
        this.f26461a = new cwh(context, handlerThread.getLooper(), this, this, 9200000);
        this.f26461a.checkAvailabilityAndConnect();
    }

    private final cwm c() {
        try {
            return this.f26461a.a();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    private final void d() {
        cwh cwhVar = this.f26461a;
        if (cwhVar == null) {
            return;
        }
        if (cwhVar.isConnected() || this.f26461a.isConnecting()) {
            this.f26461a.disconnect();
        }
    }

    private static beb.a e() {
        return beb.a.c().j(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID).f();
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        cwm c2 = c();
        if (c2 != null) {
            try {
                this.f26464d.put(c2.a(new zzdwh(this.f26462b, this.f26463c)).zzazh());
                d();
                this.e.quit();
            } catch (Throwable th) {
                try {
                    this.f26464d.put(e());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    d();
                    this.e.quit();
                    throw th2;
                }
                d();
                this.e.quit();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a(int i) {
        try {
            this.f26464d.put(e());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        try {
            this.f26464d.put(e());
        } catch (InterruptedException e) {
        }
    }

    public final beb.a b() {
        beb.a aVar;
        try {
            aVar = this.f26464d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            aVar = null;
        }
        beb.a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = e();
        }
        return aVar2;
    }
}
