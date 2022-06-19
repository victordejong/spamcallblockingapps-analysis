package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsl.class */
public final class dsl implements dsd {

    /* renamed from: a */
    private boolean f15572a;

    /* renamed from: b */
    private long f15573b;

    /* renamed from: c */
    private long f15574c;

    /* renamed from: d */
    private dlj f15575d = dlj.f14660a;

    @Override // com.google.android.gms.internal.ads.dsd
    /* renamed from: a */
    public final dlj mo8715a(dlj dljVar) {
        if (this.f15572a) {
            m8716a(mo8712w());
        }
        this.f15575d = dljVar;
        return dljVar;
    }

    /* renamed from: a */
    public final void m8717a() {
        if (!this.f15572a) {
            this.f15574c = SystemClock.elapsedRealtime();
            this.f15572a = true;
        }
    }

    /* renamed from: a */
    public final void m8716a(long j) {
        this.f15573b = j;
        if (this.f15572a) {
            this.f15574c = SystemClock.elapsedRealtime();
        }
    }

    /* renamed from: a */
    public final void m8714a(dsd dsdVar) {
        m8716a(dsdVar.mo8712w());
        this.f15575d = dsdVar.mo8711x();
    }

    /* renamed from: b */
    public final void m8713b() {
        if (this.f15572a) {
            m8716a(mo8712w());
            this.f15572a = false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.gms.internal.ads.dsd
    /* renamed from: w */
    public final long mo8712w() {
        ?? r0 = this.f15573b;
        char c = r0;
        if (this.f15572a) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f15574c;
            c = this.f15575d.f14661b == 1.0f ? r0 + dkr.m9304b(elapsedRealtime) : r0 + this.f15575d.m9203a(elapsedRealtime);
        }
        return c;
    }

    @Override // com.google.android.gms.internal.ads.dsd
    /* renamed from: x */
    public final dlj mo8711x() {
        return this.f15575d;
    }
}
