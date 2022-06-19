package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* renamed from: com.google.android.gms.internal.ads.oi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oi.class */
public final class C6813oi implements AbstractC6516gi {

    /* renamed from: a */
    private boolean f27547a;

    /* renamed from: b */
    private long f27548b;

    /* renamed from: c */
    private long f27549c;

    /* renamed from: d */
    private C6991tb f27550d = C6991tb.f29879a;

    /* renamed from: a */
    public final void m12657a() {
        if (!this.f27547a) {
            this.f27549c = SystemClock.elapsedRealtime();
            this.f27547a = true;
        }
    }

    /* renamed from: b */
    public final void m12656b() {
        if (this.f27547a) {
            m12655c(mo9286o());
            this.f27547a = false;
        }
    }

    /* renamed from: c */
    public final void m12655c(long j) {
        this.f27548b = j;
        if (this.f27547a) {
            this.f27549c = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6516gi
    /* renamed from: c0 */
    public final C6991tb mo9289c0() {
        throw null;
    }

    /* renamed from: d */
    public final void m12654d(AbstractC6516gi abstractC6516gi) {
        m12655c(abstractC6516gi.mo9286o());
        this.f27550d = abstractC6516gi.mo9289c0();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6516gi
    /* renamed from: d0 */
    public final C6991tb mo9288d0(C6991tb c6991tb) {
        if (this.f27547a) {
            m12655c(mo9286o());
        }
        this.f27550d = c6991tb;
        return c6991tb;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.AbstractC6516gi
    /* renamed from: o */
    public final long mo9286o() {
        ?? r0 = this.f27548b;
        char c = r0;
        if (this.f27547a) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f27549c;
            C6991tb c6991tb = this.f27550d;
            c = r0 + (c6991tb.f29880b == 1.0f ? C6397db.m15841b(elapsedRealtime) : c6991tb.m10751a(elapsedRealtime));
        }
        return c;
    }
}
