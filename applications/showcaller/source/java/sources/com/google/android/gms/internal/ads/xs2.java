package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xs2.class */
public final class xs2 {

    /* renamed from: a */
    private final C6574i2 f32281a;

    /* renamed from: b */
    private final File f32282b;

    /* renamed from: c */
    private final File f32283c;

    /* renamed from: d */
    private final File f32284d;

    /* renamed from: e */
    private byte[] f32285e;

    public xs2(C6574i2 c6574i2, File file, File file2, File file3) {
        this.f32281a = c6574i2;
        this.f32282b = file;
        this.f32283c = file3;
        this.f32284d = file2;
    }

    /* renamed from: a */
    public final C6574i2 m9069a() {
        return this.f32281a;
    }

    /* renamed from: b */
    public final File m9068b() {
        return this.f32282b;
    }

    /* renamed from: c */
    public final File m9067c() {
        return this.f32283c;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0052  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m9066d() {
        /*
            r3 = this;
            r0 = r3
            byte[] r0 = r0.f32285e
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L47
            r0 = r3
            java.io.File r0 = r0.f32284d
            r6 = r0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L39
            r4 = r0
            r0 = r4
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L39
            r0 = r4
            com.google.android.gms.internal.ads.zzgex r0 = com.google.android.gms.internal.ads.zzgex.zzw(r0)     // Catch: java.lang.Throwable -> L2a java.io.IOException -> L59
            byte[] r0 = r0.zzz()     // Catch: java.lang.Throwable -> L2a java.io.IOException -> L59
            r5 = r0
            r0 = r4
            com.google.android.gms.common.util.C6233k.m16790a(r0)
            r0 = r5
            r4 = r0
            goto L42
        L2a:
            r6 = move-exception
            r0 = r4
            r5 = r0
            r0 = r6
            r4 = r0
            goto L33
        L32:
            r4 = move-exception
        L33:
            r0 = r5
            com.google.android.gms.common.util.C6233k.m16790a(r0)
            r0 = r4
            throw r0
        L39:
            r4 = move-exception
            r0 = 0
            r4 = r0
        L3c:
            r0 = r4
            com.google.android.gms.common.util.C6233k.m16790a(r0)
            r0 = 0
            r4 = r0
        L42:
            r0 = r3
            r1 = r4
            r0.f32285e = r1
        L47:
            r0 = r3
            byte[] r0 = r0.f32285e
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L52
            r0 = 0
            return r0
        L52:
            r0 = r4
            r1 = r4
            int r1 = r1.length
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            return r0
        L59:
            r5 = move-exception
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.xs2.m9066d():byte[]");
    }

    /* renamed from: e */
    public final boolean m9065e(long j) {
        return this.f32281a.m14509E() - (System.currentTimeMillis() / 1000) < 3600;
    }
}
