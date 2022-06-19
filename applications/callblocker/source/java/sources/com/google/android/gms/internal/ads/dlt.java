package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlt.class */
public final class dlt {

    /* renamed from: a */
    private final cnz f14693a;

    /* renamed from: b */
    private final dlu f14694b;

    public dlt(cnz cnzVar, dlu dluVar) {
        this.f14693a = dluVar != null ? (cnz) drz.m8774a(cnzVar) : null;
        this.f14694b = dluVar;
    }

    /* renamed from: a */
    public final void m9191a(int i) {
        if (this.f14694b != null) {
            this.f14693a.post(new dma(this, i));
        }
    }

    /* renamed from: a */
    public final void m9190a(int i, long j, long j2) {
        if (this.f14694b != null) {
            this.f14693a.post(new dly(this, i, j, j2));
        }
    }

    /* renamed from: a */
    public final void m9189a(dlf dlfVar) {
        if (this.f14694b != null) {
            this.f14693a.post(new dlz(this, dlfVar));
        }
    }

    /* renamed from: a */
    public final void m9187a(dmt dmtVar) {
        if (this.f14694b != null) {
            this.f14693a.post(new dlw(this, dmtVar));
        }
    }

    /* renamed from: a */
    public final void m9186a(String str, long j, long j2) {
        if (this.f14694b != null) {
            this.f14693a.post(new dlv(this, str, j, j2));
        }
    }

    /* renamed from: b */
    public final void m9185b(dmt dmtVar) {
        if (this.f14694b != null) {
            this.f14693a.post(new dmb(this, dmtVar));
        }
    }
}
