package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edd.class */
public final class edd implements ecv {

    /* renamed from: a */
    private boolean f48735a;

    /* renamed from: b */
    private long f48736b;

    /* renamed from: c */
    private long f48737c;

    /* renamed from: d */
    private dvz f48738d = dvz.f47757a;

    @Override // com.google.android.gms.internal.ads.ecv
    /* renamed from: a */
    public final dvz mo15205a(dvz dvzVar) {
        if (this.f48735a) {
            m15206a(mo15202y());
        }
        this.f48738d = dvzVar;
        return dvzVar;
    }

    /* renamed from: a */
    public final void m15207a() {
        if (!this.f48735a) {
            this.f48737c = SystemClock.elapsedRealtime();
            this.f48735a = true;
        }
    }

    /* renamed from: a */
    public final void m15206a(long j) {
        this.f48736b = j;
        if (this.f48735a) {
            this.f48737c = SystemClock.elapsedRealtime();
        }
    }

    /* renamed from: a */
    public final void m15204a(ecv ecvVar) {
        m15206a(ecvVar.mo15202y());
        this.f48738d = ecvVar.mo15201z();
    }

    /* renamed from: b */
    public final void m15203b() {
        if (this.f48735a) {
            m15206a(mo15202y());
            this.f48735a = false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.ecv
    /* renamed from: y */
    public final long mo15202y() {
        ?? r0 = this.f48736b;
        char c = r0;
        if (this.f48735a) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f48737c;
            c = r0 + (this.f48738d.f47758b == 1.0f ? dvj.m15656b(elapsedRealtime) : elapsedRealtime * this.f48738d.f47760d);
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.ecv
    /* renamed from: z */
    public final dvz mo15201z() {
        return this.f48738d;
    }
}
