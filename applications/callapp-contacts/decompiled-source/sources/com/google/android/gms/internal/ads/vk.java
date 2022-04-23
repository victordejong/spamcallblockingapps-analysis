package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vk.class */
final class vk {

    /* renamed from: a  reason: collision with root package name */
    long f28430a;

    /* renamed from: b  reason: collision with root package name */
    final String f28431b;

    /* renamed from: c  reason: collision with root package name */
    final String f28432c;

    /* renamed from: d  reason: collision with root package name */
    final long f28433d;
    final long e;
    final long f;
    final long g;
    final List<eim> h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public vk(java.lang.String r14, com.google.android.gms.internal.ads.eap r15) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r0 = r0.f27535b
            r16 = r0
            r0 = r15
            long r0 = r0.f27536c
            r17 = r0
            r0 = r15
            long r0 = r0.f27537d
            r19 = r0
            r0 = r15
            long r0 = r0.e
            r21 = r0
            r0 = r15
            long r0 = r0.f
            r23 = r0
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.eim> r0 = r0.h
            if (r0 == 0) goto L_0x002c
            r0 = r15
            java.util.List<com.google.android.gms.internal.ads.eim> r0 = r0.h
            r15 = r0
            goto L_0x008a
        L_0x002c:
            r0 = r15
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.g
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
        L_0x004f:
            r0 = r25
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x008a
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
            goto L_0x004f
        L_0x008a:
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.vk.<init>(java.lang.String, com.google.android.gms.internal.ads.eap):void");
    }

    private vk(String str, String str2, long j, long j2, long j3, long j4, List<eim> list) {
        this.f28431b = str;
        this.f28432c = "".equals(str2) ? null : str2;
        this.f28433d = j;
        this.e = j2;
        this.f = j3;
        this.g = j4;
        this.h = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static vk a(ym ymVar) throws IOException {
        if (tl.a((InputStream) ymVar) == 538247942) {
            return new vk(tl.a(ymVar), tl.a(ymVar), tl.b((InputStream) ymVar), tl.b((InputStream) ymVar), tl.b((InputStream) ymVar), tl.b((InputStream) ymVar), tl.b(ymVar));
        }
        throw new IOException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(OutputStream outputStream) {
        try {
            tl.a(outputStream, 538247942);
            tl.a(outputStream, this.f28431b);
            String str = this.f28432c;
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            tl.a(outputStream, str2);
            tl.a(outputStream, this.f28433d);
            tl.a(outputStream, this.e);
            tl.a(outputStream, this.f);
            tl.a(outputStream, this.g);
            List<eim> list = this.h;
            if (list != null) {
                tl.a(outputStream, list.size());
                for (eim eimVar : list) {
                    tl.a(outputStream, eimVar.f27864a);
                    tl.a(outputStream, eimVar.f27865b);
                }
            } else {
                tl.a(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            mz.b("%s", e.toString());
            return false;
        }
    }
}
