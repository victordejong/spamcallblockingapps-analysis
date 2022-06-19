package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tz3.class */
public final class tz3 {

    /* renamed from: a */
    long f30436a;

    /* renamed from: b */
    final String f30437b;

    /* renamed from: c */
    final String f30438c;

    /* renamed from: d */
    final long f30439d;

    /* renamed from: e */
    final long f30440e;

    /* renamed from: f */
    final long f30441f;

    /* renamed from: g */
    final long f30442g;

    /* renamed from: h */
    final List<wy3> f30443h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public tz3(java.lang.String r14, com.google.android.gms.internal.ads.oy3 r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.f27790b
            r16 = r0
            r0 = r15
            long r0 = r0.f27791c
            r17 = r0
            r0 = r15
            long r0 = r0.f27792d
            r19 = r0
            r0 = r15
            long r0 = r0.f27793e
            r21 = r0
            r0 = r15
            long r0 = r0.f27794f
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.wy3> r0 = r0.f27796h
            r25 = r0
            r0 = r25
            if (r0 == 0) goto L2e
            r0 = r25
            r15 = r0
        L2b:
            goto L8b
        L2e:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f27795g
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
            com.google.android.gms.internal.ads.wy3 r1 = new com.google.android.gms.internal.ads.wy3
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.tz3.<init>(java.lang.String, com.google.android.gms.internal.ads.oy3):void");
    }

    private tz3(String str, String str2, long j, long j2, long j3, long j4, List<wy3> list) {
        this.f30437b = str;
        this.f30438c = true == "".equals(str2) ? null : str2;
        this.f30439d = j;
        this.f30440e = j2;
        this.f30441f = j3;
        this.f30442g = j4;
        this.f30443h = list;
    }

    /* renamed from: a */
    public static tz3 m10452a(uz3 uz3Var) {
        if (wz3.m9404h(uz3Var) == 538247942) {
            String m9400l = wz3.m9400l(uz3Var);
            String m9400l2 = wz3.m9400l(uz3Var);
            long m9402j = wz3.m9402j(uz3Var);
            long m9402j2 = wz3.m9402j(uz3Var);
            long m9402j3 = wz3.m9402j(uz3Var);
            long m9402j4 = wz3.m9402j(uz3Var);
            int m9404h = wz3.m9404h(uz3Var);
            if (m9404h < 0) {
                StringBuilder sb = new StringBuilder(31);
                sb.append("readHeaderList size=");
                sb.append(m9404h);
                throw new IOException(sb.toString());
            }
            ArrayList emptyList = m9404h == 0 ? Collections.emptyList() : new ArrayList();
            for (int i = 0; i < m9404h; i++) {
                emptyList.add(new wy3(wz3.m9400l(uz3Var).intern(), wz3.m9400l(uz3Var).intern()));
            }
            return new tz3(m9400l, m9400l2, m9402j, m9402j2, m9402j3, m9402j4, emptyList);
        }
        throw new IOException();
    }
}
