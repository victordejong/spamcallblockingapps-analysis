package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ru1.class */
public final class ru1 {

    /* renamed from: a */
    private final hk2 f8407a;

    /* renamed from: b */
    private final File f8408b;

    /* renamed from: c */
    private final File f8409c;

    /* renamed from: d */
    private final File f8410d;

    /* renamed from: e */
    private byte[] f8411e;

    public ru1(hk2 hk2Var, File file, File file2, File file3) {
        this.f8407a = hk2Var;
        this.f8408b = file;
        this.f8409c = file3;
        this.f8410d = file2;
    }

    /* renamed from: a */
    public final hk2 m5858a() {
        return this.f8407a;
    }

    /* renamed from: b */
    public final File m5857b() {
        return this.f8408b;
    }

    /* renamed from: c */
    public final File m5856c() {
        return this.f8409c;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0050  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m5855d() {
        /*
            r3 = this;
            r0 = r3
            byte[] r0 = r0.f8411e
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L45
            r0 = r3
            java.io.File r0 = r0.f8410d
            r6 = r0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L37
            r4 = r0
            r0 = r4
            r1 = r6
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L2e java.io.IOException -> L37
            r0 = r4
            com.google.android.gms.internal.ads.zzesf r0 = com.google.android.gms.internal.ads.zzesf.zzv(r0)     // Catch: java.lang.Throwable -> L2a java.io.IOException -> L57
            byte[] r0 = r0.zzy()     // Catch: java.lang.Throwable -> L2a java.io.IOException -> L57
            r6 = r0
            r0 = r4
            com.google.android.gms.common.util.C1615l.m8222a(r0)
            r0 = r6
            r4 = r0
            goto L40
        L2a:
            r6 = move-exception
            goto L31
        L2e:
            r6 = move-exception
            r0 = r5
            r4 = r0
        L31:
            r0 = r4
            com.google.android.gms.common.util.C1615l.m8222a(r0)
            r0 = r6
            throw r0
        L37:
            r4 = move-exception
            r0 = 0
            r4 = r0
        L3a:
            r0 = r4
            com.google.android.gms.common.util.C1615l.m8222a(r0)
            r0 = 0
            r4 = r0
        L40:
            r0 = r3
            r1 = r4
            r0.f8411e = r1
        L45:
            r0 = r3
            byte[] r0 = r0.f8411e
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L50
            r0 = 0
            return r0
        L50:
            r0 = r4
            r1 = r4
            int r1 = r1.length
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            return r0
        L57:
            r6 = move-exception
            goto L3a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ru1.m5855d():byte[]");
    }

    /* renamed from: e */
    public final boolean m5854e(long j) {
        return this.f8407a.G() - (System.currentTimeMillis() / 1000) < 3600;
    }
}
