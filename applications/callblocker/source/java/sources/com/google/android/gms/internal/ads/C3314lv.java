package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.lv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lv.class */
public final class C3314lv {

    /* renamed from: a */
    long f16943a;

    /* renamed from: b */
    final String f16944b;

    /* renamed from: c */
    final String f16945c;

    /* renamed from: d */
    final long f16946d;

    /* renamed from: e */
    final long f16947e;

    /* renamed from: f */
    final long f16948f;

    /* renamed from: g */
    final long f16949g;

    /* renamed from: h */
    final List<dnv> f16950h;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C3314lv(java.lang.String r14, com.google.android.gms.internal.ads.bzv r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.f12579b
            r16 = r0
            r0 = r15
            long r0 = r0.f12580c
            r17 = r0
            r0 = r15
            long r0 = r0.f12581d
            r19 = r0
            r0 = r15
            long r0 = r0.f12582e
            r21 = r0
            r0 = r15
            long r0 = r0.f12583f
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.dnv> r0 = r0.f12585h
            if (r0 == 0) goto L39
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.dnv> r0 = r0.f12585h
            r15 = r0
        L29:
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
        L39:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f12584g
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
        L5a:
            r0 = r25
            r15 = r0
            r0 = r26
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L29
            r0 = r26
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r15 = r0
            r0 = r25
            com.google.android.gms.internal.ads.dnv r1 = new com.google.android.gms.internal.ads.dnv
            r2 = r1
            r3 = r15
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r15
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L5a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3314lv.<init>(java.lang.String, com.google.android.gms.internal.ads.bzv):void");
    }

    private C3314lv(String str, String str2, long j, long j2, long j3, long j4, List<dnv> list) {
        this.f16944b = str;
        this.f16945c = "".equals(str2) ? null : str2;
        this.f16946d = j;
        this.f16947e = j2;
        this.f16948f = j3;
        this.f16949g = j4;
        this.f16950h = list;
    }

    /* renamed from: a */
    public static C3314lv m7499a(C3392os c3392os) {
        if (C3263jy.m7712a((InputStream) c3392os) != 538247942) {
            throw new IOException();
        }
        return new C3314lv(C3263jy.m7715a(c3392os), C3263jy.m7715a(c3392os), C3263jy.m7704b((InputStream) c3392os), C3263jy.m7704b((InputStream) c3392os), C3263jy.m7704b((InputStream) c3392os), C3263jy.m7704b((InputStream) c3392os), C3263jy.m7705b(c3392os));
    }

    /* renamed from: a */
    public final boolean m7498a(OutputStream outputStream) {
        boolean z;
        try {
            C3263jy.m7711a(outputStream, 538247942);
            C3263jy.m7709a(outputStream, this.f16944b);
            C3263jy.m7709a(outputStream, this.f16945c == null ? "" : this.f16945c);
            C3263jy.m7710a(outputStream, this.f16946d);
            C3263jy.m7710a(outputStream, this.f16947e);
            C3263jy.m7710a(outputStream, this.f16948f);
            C3263jy.m7710a(outputStream, this.f16949g);
            List<dnv> list = this.f16950h;
            if (list != null) {
                C3263jy.m7711a(outputStream, list.size());
                for (dnv dnvVar : list) {
                    C3263jy.m7709a(outputStream, dnvVar.m9048a());
                    C3263jy.m7709a(outputStream, dnvVar.m9047b());
                }
            } else {
                C3263jy.m7711a(outputStream, 0);
            }
            outputStream.flush();
            z = true;
        } catch (IOException e) {
            C3128ez.m7851b("%s", e.toString());
            z = false;
        }
        return z;
    }
}
