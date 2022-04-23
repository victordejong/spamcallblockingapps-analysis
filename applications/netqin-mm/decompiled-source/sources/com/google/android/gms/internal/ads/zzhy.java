package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.xb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhy.class */
public abstract class zzhy {

    /* renamed from: a */
    public static final zzhy f28298a = new xb0();

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if ((mo11757b() - 1) == 0) goto L_0x003f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m12001a(int r6, com.google.android.gms.internal.ads.zzia r7, com.google.android.gms.internal.ads.zzid r8, int r9) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = 0
            com.google.android.gms.internal.ads.zzia r0 = r0.mo11760a(r1, r2, r3)
            r0 = r5
            r1 = 0
            r2 = r8
            r3 = 0
            com.google.android.gms.internal.ads.zzid r0 = r0.m12000a(r1, r2, r3)
            r0 = 1
            r10 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0063
            r0 = r9
            if (r0 == 0) goto L_0x0044
            r0 = r9
            r1 = 1
            if (r0 == r1) goto L_0x003f
            r0 = r9
            r1 = 2
            if (r0 != r1) goto L_0x0037
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.mo11757b()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L_0x0052
            goto L_0x003f
        L_0x0037:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x003f:
            r0 = 0
            r6 = r0
            goto L_0x0052
        L_0x0044:
            r0 = r10
            r6 = r0
            r0 = r5
            int r0 = r0.mo11757b()
            r1 = 1
            int r0 = r0 - r1
            if (r0 != 0) goto L_0x0052
            r0 = -1
            r6 = r0
        L_0x0052:
            r0 = r6
            r1 = -1
            if (r0 != r1) goto L_0x0059
            r0 = -1
            return r0
        L_0x0059:
            r0 = r5
            r1 = r6
            r2 = r8
            r3 = 0
            com.google.android.gms.internal.ads.zzid r0 = r0.m12000a(r1, r2, r3)
            r0 = 0
            return r0
        L_0x0063:
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhy.m12001a(int, com.google.android.gms.internal.ads.zzia, com.google.android.gms.internal.ads.zzid, int):int");
    }

    /* renamed from: a */
    public abstract int mo11758a(Object obj);

    /* renamed from: a */
    public abstract zzia mo11760a(int i, zzia zziaVar, boolean z);

    /* renamed from: a */
    public final zzid m12000a(int i, zzid zzidVar, boolean z) {
        return mo11759a(i, zzidVar, false, 0L);
    }

    /* renamed from: a */
    public abstract zzid mo11759a(int i, zzid zzidVar, boolean z, long j);

    /* renamed from: a */
    public final boolean m12002a() {
        return mo11757b() == 0;
    }

    /* renamed from: b */
    public abstract int mo11757b();

    /* renamed from: c */
    public abstract int mo11756c();
}
