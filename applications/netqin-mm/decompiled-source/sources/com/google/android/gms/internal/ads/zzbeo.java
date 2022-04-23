package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.common.collect.MapMakerInternalMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbeo.class */
public final class zzbeo implements zzhs {

    /* renamed from: a */
    public final zzoq f24904a;

    /* renamed from: b */
    public long f24905b;

    /* renamed from: c */
    public long f24906c;

    /* renamed from: d */
    public long f24907d;

    /* renamed from: e */
    public long f24908e;

    /* renamed from: f */
    public int f24909f;

    /* renamed from: g */
    public boolean f24910g;

    public zzbeo() {
        this(15000, 30000, 2500L, 5000L);
    }

    public zzbeo(int i, int i2, long j, long j2) {
        this.f24904a = new zzoq(true, MapMakerInternalMap.MAX_SEGMENTS);
        this.f24905b = 15000000L;
        this.f24906c = 30000000L;
        this.f24907d = 2500000L;
        this.f24908e = 5000000L;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    /* renamed from: a */
    public final void mo12023a() {
        m15700a(true);
    }

    /* renamed from: a */
    public final void m15701a(int i) {
        synchronized (this) {
            this.f24907d = i * 1000;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m15700a(boolean z) {
        this.f24909f = 0;
        this.f24910g = false;
        if (z) {
            this.f24904a.m11718c();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    /* renamed from: a */
    public final void mo12020a(zzhx[] zzhxVarArr, zznp zznpVar, zzod zzodVar) {
        this.f24909f = 0;
        for (int i = 0; i < zzhxVarArr.length; i++) {
            if (zzodVar.m11739a(i) != null) {
                this.f24909f += zzpq.m11619b(zzhxVarArr[i].mo12010e());
            }
        }
        this.f24904a.m11722a(this.f24909f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
        if (r12 == false) goto L_0x0063;
     */
    @Override // com.google.android.gms.internal.ads.zzhs
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo12022a(long r6) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = r5
            long r0 = r0.f24906c     // Catch: all -> 0x0071
            r8 = r0
            r0 = 0
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = 0
            r11 = r0
            goto L_0x0028
        L_0x0016:
            r0 = r6
            r1 = r5
            long r1 = r1.f24905b     // Catch: all -> 0x0071
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0025
            r0 = 2
            r11 = r0
            goto L_0x0028
        L_0x0025:
            r0 = 1
            r11 = r0
        L_0x0028:
            r0 = r5
            com.google.android.gms.internal.ads.zzoq r0 = r0.f24904a     // Catch: all -> 0x0071
            int r0 = r0.m11717d()     // Catch: all -> 0x0071
            r1 = r5
            int r1 = r1.f24909f     // Catch: all -> 0x0071
            if (r0 < r1) goto L_0x003c
            r0 = 1
            r12 = r0
            goto L_0x003f
        L_0x003c:
            r0 = 0
            r12 = r0
        L_0x003f:
            r0 = r11
            r1 = 2
            if (r0 == r1) goto L_0x0063
            r0 = r10
            r13 = r0
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L_0x0066
            r0 = r10
            r13 = r0
            r0 = r5
            boolean r0 = r0.f24910g     // Catch: all -> 0x0071
            if (r0 == 0) goto L_0x0066
            r0 = r10
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0066
        L_0x0063:
            r0 = 1
            r13 = r0
        L_0x0066:
            r0 = r5
            r1 = r13
            r0.f24910g = r1     // Catch: all -> 0x0071
            r0 = r5
            monitor-exit(r0)
            r0 = r13
            return r0
        L_0x0071:
            r14 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = r14
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbeo.mo12022a(long):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    /* renamed from: a */
    public final boolean mo12021a(long j, boolean z) {
        boolean z2;
        synchronized (this) {
            long j2 = z ? this.f24908e : this.f24907d;
            z2 = j2 <= 0 || j >= j2;
        }
        return z2;
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    /* renamed from: b */
    public final void mo12019b() {
        m15700a(false);
    }

    /* renamed from: b */
    public final void m15699b(int i) {
        synchronized (this) {
            this.f24908e = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    /* renamed from: c */
    public final zzok mo12018c() {
        return this.f24904a;
    }

    /* renamed from: c */
    public final void m15698c(int i) {
        synchronized (this) {
            this.f24905b = i * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhs
    /* renamed from: d */
    public final void mo12017d() {
        m15700a(true);
    }

    /* renamed from: d */
    public final void m15697d(int i) {
        synchronized (this) {
            this.f24906c = i * 1000;
        }
    }
}
