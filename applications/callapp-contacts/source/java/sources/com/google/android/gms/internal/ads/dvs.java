package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvs.class */
final class dvs {

    /* renamed from: a */
    public final eas f47730a;

    /* renamed from: b */
    public final Object f47731b;

    /* renamed from: c */
    public final int f47732c;

    /* renamed from: d */
    public final ebc[] f47733d;

    /* renamed from: e */
    public final long f47734e;

    /* renamed from: f */
    public int f47735f;

    /* renamed from: g */
    public long f47736g;

    /* renamed from: h */
    public boolean f47737h;

    /* renamed from: i */
    public boolean f47738i;

    /* renamed from: j */
    public boolean f47739j;

    /* renamed from: k */
    public dvs f47740k;

    /* renamed from: l */
    public ebx f47741l;

    /* renamed from: m */
    private final boolean[] f47742m;

    /* renamed from: n */
    private final dvy[] f47743n;

    /* renamed from: o */
    private final dwc[] f47744o;

    /* renamed from: p */
    private final ebv f47745p;

    /* renamed from: q */
    private final dvx f47746q;

    /* renamed from: r */
    private final eau f47747r;

    /* renamed from: s */
    private ebx f47748s;

    public dvs(dvy[] dvyVarArr, dwc[] dwcVarArr, long j, ebv ebvVar, dvx dvxVar, eau eauVar, Object obj, int i, int i2, boolean z, long j2) {
        this.f47743n = dvyVarArr;
        this.f47744o = dwcVarArr;
        this.f47734e = j;
        this.f47745p = ebvVar;
        this.f47746q = dvxVar;
        this.f47747r = eauVar;
        this.f47731b = ecr.m15251a(obj);
        this.f47732c = i;
        this.f47735f = i2;
        this.f47737h = z;
        this.f47736g = j2;
        this.f47733d = new ebc[dvyVarArr.length];
        this.f47742m = new boolean[dvyVarArr.length];
        this.f47730a = eauVar.mo15362a(i2, dvxVar.mo15594d());
    }

    /* renamed from: a */
    public final long m15607a() {
        return this.f47734e - this.f47736g;
    }

    /* renamed from: a */
    public final long m15605a(long j) {
        return m15604a(j, false, new boolean[this.f47743n.length]);
    }

    /* renamed from: a */
    public final long m15604a(long j, boolean z, boolean[] zArr) {
        ebw ebwVar = this.f47741l.f48645b;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= ebwVar.f48641a) {
                break;
            }
            boolean[] zArr2 = this.f47742m;
            if (z || !this.f47741l.m15295a(this.f47748s, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long mo15356a = this.f47730a.mo15356a(ebwVar.m15296a(), this.f47742m, this.f47733d, zArr, j);
        this.f47748s = this.f47741l;
        this.f47739j = false;
        int i2 = 0;
        while (true) {
            ebc[] ebcVarArr = this.f47733d;
            if (i2 >= ebcVarArr.length) {
                this.f47746q.mo15597a(this.f47743n, ebwVar);
                return mo15356a;
            }
            if (ebcVarArr[i2] != null) {
                ecr.m15247b(ebwVar.f48642b[i2] != null);
                this.f47739j = true;
            } else {
                ecr.m15247b(ebwVar.f48642b[i2] == null);
            }
            i2++;
        }
    }

    /* renamed from: a */
    public final void m15606a(int i, boolean z) {
        this.f47735f = i;
        this.f47737h = z;
    }

    /* renamed from: b */
    public final boolean m15603b() {
        if (this.f47738i) {
            return !this.f47739j || this.f47730a.mo15351e() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m15602c() throws com.google.android.gms.internal.ads.zzhe {
        /*
            r4 = this;
            r0 = r4
            com.google.android.gms.internal.ads.ebv r0 = r0.f47745p
            r1 = r4
            com.google.android.gms.internal.ads.dwc[] r1 = r1.f47744o
            r2 = r4
            com.google.android.gms.internal.ads.eas r2 = r2.f47730a
            com.google.android.gms.internal.ads.ebi r2 = r2.mo15353c()
            com.google.android.gms.internal.ads.ebx r0 = r0.mo15297a(r1, r2)
            r5 = r0
            r0 = r4
            com.google.android.gms.internal.ads.ebx r0 = r0.f47748s
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L23
        L1e:
            r0 = 0
            r7 = r0
            goto L44
        L23:
            r0 = 0
            r7 = r0
        L25:
            r0 = r7
            r1 = r5
            com.google.android.gms.internal.ads.ebw r1 = r1.f48645b
            int r1 = r1.f48641a
            if (r0 >= r1) goto L42
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = r0.m15295a(r1, r2)
            if (r0 != 0) goto L3c
            goto L1e
        L3c:
            int r7 = r7 + 1
            goto L25
        L42:
            r0 = 1
            r7 = r0
        L44:
            r0 = r7
            if (r0 == 0) goto L4a
            r0 = 0
            return r0
        L4a:
            r0 = r4
            r1 = r5
            r0.f47741l = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dvs.m15602c():boolean");
    }

    /* renamed from: d */
    public final void m15601d() {
        try {
            this.f47747r.mo15360a(this.f47730a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }
}
