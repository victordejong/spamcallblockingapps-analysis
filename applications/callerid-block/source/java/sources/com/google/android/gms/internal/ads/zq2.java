package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zq2.class */
public final class zq2 {

    /* renamed from: a */
    public final Uri f9427a;

    /* renamed from: b */
    public final long f9428b;

    /* renamed from: c */
    public final long f9429c;

    /* renamed from: d */
    public final long f9430d;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        if (r12 == (-1)) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zq2(android.net.Uri r6, byte[] r7, long r8, long r10, long r12, java.lang.String r14, int r15) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = 0
            r16 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L13
            r0 = 1
            r17 = r0
            goto L16
        L13:
            r0 = 0
            r17 = r0
        L16:
            r0 = r17
            com.google.android.gms.internal.ads.jr2.m6926a(r0)
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L28
            r0 = 1
            r17 = r0
            goto L2b
        L28:
            r0 = 0
            r17 = r0
        L2b:
            r0 = r17
            com.google.android.gms.internal.ads.jr2.m6926a(r0)
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L44
            r0 = r16
            r17 = r0
            r0 = r12
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L47
        L44:
            r0 = 1
            r17 = r0
        L47:
            r0 = r17
            com.google.android.gms.internal.ads.jr2.m6926a(r0)
            r0 = r5
            r1 = r6
            r0.f9427a = r1
            r0 = r5
            r1 = r8
            r0.f9428b = r1
            r0 = r5
            r1 = r10
            r0.f9429c = r1
            r0 = r5
            r1 = r12
            r0.f9430d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zq2.<init>(android.net.Uri, byte[], long, long, long, java.lang.String, int):void");
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9427a);
        String arrays = Arrays.toString((byte[]) null);
        long j = this.f9428b;
        long j2 = this.f9429c;
        long j3 = this.f9430d;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 93 + String.valueOf(arrays).length() + "null".length());
        sb.append("DataSpec[");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(arrays);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(", ");
        sb.append(j3);
        sb.append(", null, 0]");
        return sb.toString();
    }
}
