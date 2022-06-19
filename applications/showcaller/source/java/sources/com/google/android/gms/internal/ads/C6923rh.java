package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.rh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rh.class */
public final class C6923rh {

    /* renamed from: a */
    public final Uri f28950a;

    /* renamed from: b */
    public final long f28951b;

    /* renamed from: c */
    public final long f28952c;

    /* renamed from: d */
    public final long f28953d;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        if (r12 == (-1)) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6923rh(android.net.Uri r6, byte[] r7, long r8, long r10, long r12, java.lang.String r14, int r15) {
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
            com.google.android.gms.internal.ads.C6367ci.m16042a(r0)
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
            com.google.android.gms.internal.ads.C6367ci.m16042a(r0)
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
            com.google.android.gms.internal.ads.C6367ci.m16042a(r0)
            r0 = r5
            r1 = r6
            r0.f28950a = r1
            r0 = r5
            r1 = r8
            r0.f28951b = r1
            r0 = r5
            r1 = r10
            r0.f28952c = r1
            r0 = r5
            r1 = r12
            r0.f28953d = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6923rh.<init>(android.net.Uri, byte[], long, long, long, java.lang.String, int):void");
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f28950a);
        String arrays = Arrays.toString((byte[]) null);
        long j = this.f28951b;
        long j2 = this.f28952c;
        long j3 = this.f28953d;
        StringBuilder sb = new StringBuilder(valueOf.length() + 93 + String.valueOf(arrays).length() + 4);
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
