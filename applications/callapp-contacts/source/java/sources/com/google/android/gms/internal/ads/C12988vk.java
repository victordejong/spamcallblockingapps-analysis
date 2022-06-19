package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.vk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vk.class */
public final class C12988vk {

    /* renamed from: a */
    long f49908a;

    /* renamed from: b */
    final String f49909b;

    /* renamed from: c */
    final String f49910c;

    /* renamed from: d */
    final long f49911d;

    /* renamed from: e */
    final long f49912e;

    /* renamed from: f */
    final long f49913f;

    /* renamed from: g */
    final long f49914g;

    /* renamed from: h */
    final List<eim> f49915h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C12988vk(java.lang.String r14, com.google.android.gms.internal.ads.eap r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.f48517b
            r16 = r0
            r0 = r15
            long r0 = r0.f48518c
            r17 = r0
            r0 = r15
            long r0 = r0.f48519d
            r19 = r0
            r0 = r15
            long r0 = r0.f48520e
            r21 = r0
            r0 = r15
            long r0 = r0.f48521f
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.eim> r0 = r0.f48523h
            if (r0 == 0) goto L2c
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.eim> r0 = r0.f48523h
            r15 = r0
            goto L8a
        L2c:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.f48522g
            r25 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r2 = r25
            int r2 = r2.size()
            r1.<init>(r2)
            r15 = r0
            r0 = r25
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r25 = r0
        L4f:
            r0 = r25
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L8a
            r0 = r25
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r26 = r0
            r0 = r15
            com.google.android.gms.internal.ads.eim r1 = new com.google.android.gms.internal.ads.eim
            r2 = r1
            r3 = r26
            java.lang.Object r3 = r3.getKey()
            java.lang.String r3 = (java.lang.String) r3
            r4 = r26
            java.lang.Object r4 = r4.getValue()
            java.lang.String r4 = (java.lang.String) r4
            r2.<init>(r3, r4)
            boolean r0 = r0.add(r1)
            goto L4f
        L8a:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12988vk.<init>(java.lang.String, com.google.android.gms.internal.ads.eap):void");
    }

    private C12988vk(String str, String str2, long j, long j2, long j3, long j4, List<eim> list) {
        this.f49909b = str;
        this.f49910c = "".equals(str2) ? null : str2;
        this.f49911d = j;
        this.f49912e = j2;
        this.f49913f = j3;
        this.f49914g = j4;
        this.f49915h = list;
    }

    /* renamed from: a */
    public static C12988vk m14084a(C13073ym c13073ym) throws IOException {
        if (C12935tl.m14170a((InputStream) c13073ym) == 538247942) {
            return new C12988vk(C12935tl.m14173a(c13073ym), C12935tl.m14173a(c13073ym), C12935tl.m14162b((InputStream) c13073ym), C12935tl.m14162b((InputStream) c13073ym), C12935tl.m14162b((InputStream) c13073ym), C12935tl.m14162b((InputStream) c13073ym), C12935tl.m14163b(c13073ym));
        }
        throw new IOException();
    }

    /* renamed from: a */
    public final boolean m14083a(OutputStream outputStream) {
        try {
            C12935tl.m14169a(outputStream, 538247942);
            C12935tl.m14167a(outputStream, this.f49909b);
            String str = this.f49910c;
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            C12935tl.m14167a(outputStream, str2);
            C12935tl.m14168a(outputStream, this.f49911d);
            C12935tl.m14168a(outputStream, this.f49912e);
            C12935tl.m14168a(outputStream, this.f49913f);
            C12935tl.m14168a(outputStream, this.f49914g);
            List<eim> list = this.f49915h;
            if (list != null) {
                C12935tl.m14169a(outputStream, list.size());
                for (eim eimVar : list) {
                    C12935tl.m14167a(outputStream, eimVar.f49055a);
                    C12935tl.m14167a(outputStream, eimVar.f49056b);
                }
            } else {
                C12935tl.m14169a(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            C12759mz.m14480b("%s", e.toString());
            return false;
        }
    }
}
