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
            if (r0 != 0) goto L_0x0045
            r0 = r3
            java.io.File r0 = r0.f8410d
            r6 = r0
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: all -> 0x002e, IOException -> 0x0037
            r4 = r0
            r0 = r4
            r1 = r6
            r0.<init>(r1)     // Catch: all -> 0x002e, IOException -> 0x0037
            r0 = r4
            com.google.android.gms.internal.ads.zzesf r0 = com.google.android.gms.internal.ads.zzesf.zzv(r0)     // Catch: all -> 0x002a, IOException -> 0x0057
            byte[] r0 = r0.zzy()     // Catch: all -> 0x002a, IOException -> 0x0057
            r6 = r0
            r0 = r4
            com.google.android.gms.common.util.C1615l.m8222a(r0)
            r0 = r6
            r4 = r0
            goto L_0x0040
        L_0x002a:
            r6 = move-exception
            goto L_0x0031
        L_0x002e:
            r6 = move-exception
            r0 = r5
            r4 = r0
        L_0x0031:
            r0 = r4
            com.google.android.gms.common.util.C1615l.m8222a(r0)
            r0 = r6
            throw r0
        L_0x0037:
            r4 = move-exception
            r0 = 0
            r4 = r0
        L_0x003a:
            r0 = r4
            com.google.android.gms.common.util.C1615l.m8222a(r0)
            r0 = 0
            r4 = r0
        L_0x0040:
            r0 = r3
            r1 = r4
            r0.f8411e = r1
        L_0x0045:
            r0 = r3
            byte[] r0 = r0.f8411e
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0050
            r0 = 0
            return r0
        L_0x0050:
            r0 = r4
            r1 = r4
            int r1 = r1.length
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            return r0
        L_0x0057:
            r6 = move-exception
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ru1.m5855d():byte[]");
    }

    /* renamed from: e */
    public final boolean m5854e(long j) {
        return this.f8407a.G() - (System.currentTimeMillis() / 1000) < 3600;
    }
}
