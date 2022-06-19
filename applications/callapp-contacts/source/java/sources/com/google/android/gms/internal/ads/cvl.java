package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.AbstractC12025d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvl.class */
public final class cvl implements AbstractC12025d.AbstractC12026a, AbstractC12025d.AbstractC12027b {

    /* renamed from: a */
    private final cwh f46632a;

    /* renamed from: b */
    private final cwa f46633b;

    /* renamed from: c */
    private final Object f46634c = new Object();

    /* renamed from: d */
    private boolean f46635d = false;

    /* renamed from: e */
    private boolean f46636e = false;

    public cvl(Context context, Looper looper, cwa cwaVar) {
        this.f46633b = cwaVar;
        this.f46632a = new cwh(context, looper, this, this, 12800000);
    }

    /* renamed from: c */
    private final void m17164c() {
        synchronized (this.f46634c) {
            if (this.f46632a.isConnected() || this.f46632a.isConnecting()) {
                this.f46632a.disconnect();
            }
            Binder.flushPendingCommands();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        synchronized (this.f46634c) {
            if (this.f46636e) {
                return;
            }
            this.f46636e = true;
            try {
                this.f46632a.m17131a().mo17130a(new zzdwc(this.f46633b.mo16256g()));
                m17164c();
            } catch (Exception e) {
                m17164c();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11763a(int i) {
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
    }

    /* renamed from: b */
    public final void m17165b() {
        synchronized (this.f46634c) {
            if (!this.f46635d) {
                this.f46635d = true;
                this.f46632a.checkAvailabilityAndConnect();
            }
        }
    }
}
