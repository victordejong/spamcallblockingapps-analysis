package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoj.class */
public final class zzoj implements zzom {

    /* renamed from: a */
    public final byte[] f28719a;

    /* renamed from: b */
    public Uri f28720b;

    /* renamed from: c */
    public int f28721c;

    /* renamed from: d */
    public int f28722d;

    public zzoj(byte[] bArr) {
        zzoz.m11698a(bArr);
        zzoz.m11696a(bArr.length > 0);
        this.f28719a = bArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11728a(com.google.android.gms.internal.ads.zzon r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            android.net.Uri r1 = r1.f28723a
            r0.f28720b = r1
            r0 = r6
            long r0 = r0.f28726d
            r7 = r0
            r0 = r5
            r1 = r7
            int r1 = (int) r1
            r0.f28721c = r1
            r0 = r6
            long r0 = r0.f28727e
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0030
            r0 = r5
            byte[] r0 = r0.f28719a
            int r0 = r0.length
            long r0 = (long) r0
            r1 = r7
            long r0 = r0 - r1
            r11 = r0
        L_0x0030:
            r0 = r11
            int r0 = (int) r0
            r13 = r0
            r0 = r5
            r1 = r13
            r0.f28722d = r1
            r0 = r13
            if (r0 <= 0) goto L_0x0053
            r0 = r5
            int r0 = r0.f28721c
            r1 = r13
            int r0 = r0 + r1
            r1 = r5
            byte[] r1 = r1.f28719a
            int r1 = r1.length
            if (r0 > r1) goto L_0x0053
            r0 = r13
            long r0 = (long) r0
            return r0
        L_0x0053:
            r0 = r5
            int r0 = r0.f28721c
            r13 = r0
            r0 = r6
            long r0 = r0.f28727e
            r11 = r0
            r0 = r5
            byte[] r0 = r0.f28719a
            int r0 = r0.length
            r14 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = 77
            r1.<init>(r2)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Unsatisfiable range: ["
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = ", "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "], length: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r14
            java.lang.StringBuilder r0 = r0.append(r1)
            java.io.IOException r0 = new java.io.IOException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoj.mo11728a(com.google.android.gms.internal.ads.zzon):long");
    }

    @Override // com.google.android.gms.internal.ads.zzom
    public final void close() throws IOException {
        this.f28720b = null;
    }

    @Override // com.google.android.gms.internal.ads.zzom
    /* renamed from: o */
    public final Uri mo11724o() {
        return this.f28720b;
    }

    @Override // com.google.android.gms.internal.ads.zzom
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f28722d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f28719a, this.f28721c, bArr, i, min);
        this.f28721c += min;
        this.f28722d -= min;
        return min;
    }
}
