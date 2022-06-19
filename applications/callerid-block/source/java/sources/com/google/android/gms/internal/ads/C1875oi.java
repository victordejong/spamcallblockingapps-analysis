package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.oi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oi.class */
final class C1875oi {

    /* renamed from: a */
    long f7843a;

    /* renamed from: b */
    final String f7844b;

    /* renamed from: c */
    final String f7845c;

    /* renamed from: d */
    final long f7846d;

    /* renamed from: e */
    final long f7847e;

    /* renamed from: f */
    final long f7848f;

    /* renamed from: g */
    final long f7849g;

    /* renamed from: h */
    final List<pv2> f7850h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    C1875oi(java.lang.String r14, com.google.android.gms.internal.ads.dn2 r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.f6343b
            r16 = r0
            r0 = r15
            long r0 = r0.f6344c
            r17 = r0
            r0 = r15
            long r0 = r0.f6345d
            r19 = r0
            r0 = r15
            long r0 = r0.f6346e
            r21 = r0
            r0 = r15
            long r0 = r0.f6347f
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.pv2> r0 = r0.f6349h
            r25 = r0
            r0 = r25
            if (r0 == 0) goto L2e
            r0 = r25
            r15 = r0
        L2b:
            goto L8b
        L2e:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f6348g
            r15 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r15
            int r2 = r2.size()
            r1.<init>(r2)
            r25 = r0
            r0 = r15
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r26 = r0
        L4f:
            r0 = r25
            r15 = r0
            r0 = r26
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L2b
            r0 = r26
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r15 = r0
            r0 = r25
            com.google.android.gms.internal.ads.pv2 r1 = new com.google.android.gms.internal.ads.pv2
            r2 = r1
            r3 = r15
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r15
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L4f
        L8b:
            r0 = r13
            r1 = r14
            r2 = r16
            r3 = r17
            r4 = r19
            r5 = r21
            r6 = r23
            r7 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1875oi.<init>(java.lang.String, com.google.android.gms.internal.ads.dn2):void");
    }

    private C1875oi(String str, String str2, long j, long j2, long j3, long j4, List<pv2> list) {
        this.f7844b = str;
        this.f7845c = true == "".equals(str2) ? null : str2;
        this.f7846d = j;
        this.f7847e = j2;
        this.f7848f = j3;
        this.f7849g = j4;
        this.f7850h = list;
    }

    /* renamed from: a */
    static C1875oi m6329a(C1784ij c1784ij) {
        if (fl.i(c1784ij) == 538247942) {
            String m = fl.m(c1784ij);
            String m2 = fl.m(c1784ij);
            long k = fl.k(c1784ij);
            long k2 = fl.k(c1784ij);
            long k3 = fl.k(c1784ij);
            long k4 = fl.k(c1784ij);
            int i = fl.i(c1784ij);
            if (i < 0) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("readHeaderList size=");
                sb.append(i);
                throw new IOException(sb.toString());
            }
            ArrayList emptyList = i == 0 ? Collections.emptyList() : new ArrayList();
            for (int i2 = 0; i2 < i; i2++) {
                emptyList.add(new pv2(fl.m(c1784ij).intern(), fl.m(c1784ij).intern()));
            }
            return new C1875oi(m, m2, k, k2, k3, k4, emptyList);
        }
        throw new IOException();
    }
}
