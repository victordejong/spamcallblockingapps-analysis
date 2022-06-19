package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.fb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fb.class */
public final class C6472fb {

    /* renamed from: a */
    public final Uri f22761a;

    /* renamed from: b */
    public final int f22762b;

    /* renamed from: c */
    public final byte[] f22763c;

    /* renamed from: d */
    public final Map<String, String> f22764d;
    @Deprecated

    /* renamed from: e */
    public final long f22765e;

    /* renamed from: f */
    public final long f22766f;

    /* renamed from: g */
    public final long f22767g;

    /* renamed from: h */
    public final String f22768h;

    /* renamed from: i */
    public final int f22769i;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (r14 == (-1)) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private C6472fb(android.net.Uri r6, long r7, int r9, byte[] r10, java.util.Map<java.lang.String, java.lang.String> r11, long r12, long r14, java.lang.String r16, int r17, java.lang.Object r18) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r7
            r1 = r12
            long r0 = r0 + r1
            r7 = r0
            r0 = 0
            r19 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L18
            r0 = 1
            r20 = r0
            goto L1b
        L18:
            r0 = 0
            r20 = r0
        L1b:
            r0 = r20
            com.google.android.gms.internal.ads.C7173y8.m8898a(r0)
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L2d
            r0 = 1
            r20 = r0
            goto L30
        L2d:
            r0 = 0
            r20 = r0
        L30:
            r0 = r20
            com.google.android.gms.internal.ads.C7173y8.m8898a(r0)
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L49
            r0 = r19
            r20 = r0
            r0 = r14
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L4c
        L49:
            r0 = 1
            r20 = r0
        L4c:
            r0 = r20
            com.google.android.gms.internal.ads.C7173y8.m8898a(r0)
            r0 = r5
            r1 = r6
            r0.f22761a = r1
            r0 = r5
            r1 = 1
            r0.f22762b = r1
            r0 = r5
            r1 = 0
            r0.f22763c = r1
            r0 = r5
            java.util.HashMap r1 = new java.util.HashMap
            r2 = r1
            r3 = r11
            r2.<init>(r3)
            java.util.Map r1 = java.util.Collections.unmodifiableMap(r1)
            r0.f22764d = r1
            r0 = r5
            r1 = r12
            r0.f22766f = r1
            r0 = r5
            r1 = r7
            r0.f22765e = r1
            r0 = r5
            r1 = r14
            r0.f22767g = r1
            r0 = r5
            r1 = 0
            r0.f22768h = r1
            r0 = r5
            r1 = r17
            r0.f22769i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6472fb.<init>(android.net.Uri, long, int, byte[], java.util.Map, long, long, java.lang.String, int, java.lang.Object):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C6472fb(Uri uri, Uri uri2, long j, int i, byte[] bArr, Map<String, String> map, long j2, long j3, String str, int i2, Object obj) {
        this(uri, 0L, 1, null, bArr, map, -1L, null, str, null);
    }

    @Deprecated
    public C6472fb(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, j - j2, 1, null, Collections.emptyMap(), j2, j3, null, i, null);
    }

    /* renamed from: a */
    public static String m15287a(int i) {
        return "GET";
    }

    /* renamed from: b */
    public final boolean m15286b(int i) {
        return (this.f22769i & i) == i;
    }

    public final String toString() {
        String m15287a = m15287a(1);
        String valueOf = String.valueOf(this.f22761a);
        long j = this.f22766f;
        long j2 = this.f22767g;
        int i = this.f22769i;
        StringBuilder sb = new StringBuilder(m15287a.length() + 70 + valueOf.length() + 4);
        sb.append("DataSpec[");
        sb.append(m15287a);
        sb.append(" ");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(", null, ");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }
}
