package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvs.class */
final class dvs {

    /* renamed from: a  reason: collision with root package name */
    public final eas f27270a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f27271b;

    /* renamed from: c  reason: collision with root package name */
    public final int f27272c;

    /* renamed from: d  reason: collision with root package name */
    public final ebc[] f27273d;
    public final long e;
    public int f;
    public long g;
    public boolean h;
    public boolean i;
    public boolean j;
    public dvs k;
    public ebx l;
    private final boolean[] m;
    private final dvy[] n;
    private final dwc[] o;
    private final ebv p;
    private final dvx q;
    private final eau r;
    private ebx s;

    public dvs(dvy[] dvyVarArr, dwc[] dwcVarArr, long j, ebv ebvVar, dvx dvxVar, eau eauVar, Object obj, int i, int i2, boolean z, long j2) {
        this.n = dvyVarArr;
        this.o = dwcVarArr;
        this.e = j;
        this.p = ebvVar;
        this.q = dvxVar;
        this.r = eauVar;
        this.f27271b = ecr.a(obj);
        this.f27272c = i;
        this.f = i2;
        this.h = z;
        this.g = j2;
        this.f27273d = new ebc[dvyVarArr.length];
        this.m = new boolean[dvyVarArr.length];
        this.f27270a = eauVar.a(i2, dvxVar.d());
    }

    public final long a() {
        return this.e - this.g;
    }

    public final long a(long j) {
        return a(j, false, new boolean[this.n.length]);
    }

    public final long a(long j, boolean z, boolean[] zArr) {
        ebw ebwVar = this.l.f27603b;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= ebwVar.f27599a) {
                break;
            }
            boolean[] zArr2 = this.m;
            if (z || !this.l.a(this.s, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long a2 = this.f27270a.a(ebwVar.a(), this.m, this.f27273d, zArr, j);
        this.s = this.l;
        this.j = false;
        int i2 = 0;
        while (true) {
            ebc[] ebcVarArr = this.f27273d;
            if (i2 < ebcVarArr.length) {
                if (ebcVarArr[i2] != null) {
                    ecr.b(ebwVar.f27600b[i2] != null);
                    this.j = true;
                } else {
                    ecr.b(ebwVar.f27600b[i2] == null);
                }
                i2++;
            } else {
                this.q.a(this.n, ebwVar);
                return a2;
            }
        }
    }

    public final void a(int i, boolean z) {
        this.f = i;
        this.h = z;
    }

    public final boolean b() {
        if (this.i) {
            return !this.j || this.f27270a.e() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c() throws com.google.android.gms.internal.ads.zzhe {
        /*
            r4 = this;
            r0 = r4
            com.google.android.gms.internal.ads.ebv r0 = r0.p
            r1 = r4
            com.google.android.gms.internal.ads.dwc[] r1 = r1.o
            r2 = r4
            com.google.android.gms.internal.ads.eas r2 = r2.f27270a
            com.google.android.gms.internal.ads.ebi r2 = r2.c()
            com.google.android.gms.internal.ads.ebx r0 = r0.a(r1, r2)
            r5 = r0
            r0 = r4
            com.google.android.gms.internal.ads.ebx r0 = r0.s
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0023
        L_0x001e:
            r0 = 0
            r7 = r0
            goto L_0x0044
        L_0x0023:
            r0 = 0
            r7 = r0
        L_0x0025:
            r0 = r7
            r1 = r5
            com.google.android.gms.internal.ads.ebw r1 = r1.f27603b
            int r1 = r1.f27599a
            if (r0 >= r1) goto L_0x0042
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = r0.a(r1, r2)
            if (r0 != 0) goto L_0x003c
            goto L_0x001e
        L_0x003c:
            int r7 = r7 + 1
            goto L_0x0025
        L_0x0042:
            r0 = 1
            r7 = r0
        L_0x0044:
            r0 = r7
            if (r0 == 0) goto L_0x004a
            r0 = 0
            return r0
        L_0x004a:
            r0 = r4
            r1 = r5
            r0.l = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dvs.c():boolean");
    }

    public final void d() {
        try {
            this.r.a(this.f27270a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }
}
