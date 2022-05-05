package com.amazonaws.internal;

import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/SdkDigestInputStream.class */
public class SdkDigestInputStream extends DigestInputStream implements MetricAware {
    public SdkDigestInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, messageDigest);
    }

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean isMetricActivated() {
        if (((DigestInputStream) this).in instanceof MetricAware) {
            return ((MetricAware) ((DigestInputStream) this).in).isMetricActivated();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long skip(long r9) throws java.io.IOException {
        /*
            r8 = this;
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0008
            r0 = r9
            return r0
        L_0x0008:
            r0 = 2048(0x800, double:1.0118E-320)
            r1 = r9
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            byte[] r0 = new byte[r0]
            r11 = r0
            r0 = r9
            r12 = r0
        L_0x0016:
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0054
            r0 = r8
            r1 = r11
            r2 = 0
            r3 = r12
            r4 = r11
            int r4 = r4.length
            long r4 = (long) r4
            long r3 = java.lang.Math.min(r3, r4)
            int r3 = (int) r3
            int r0 = r0.read(r1, r2, r3)
            r14 = r0
            r0 = r14
            r1 = -1
            if (r0 != r1) goto L_0x0049
            r0 = r12
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0042
            r0 = -1
            r9 = r0
            goto L_0x0047
        L_0x0042:
            r0 = r9
            r1 = r12
            long r0 = r0 - r1
            r9 = r0
        L_0x0047:
            r0 = r9
            return r0
        L_0x0049:
            r0 = r12
            r1 = r14
            long r1 = (long) r1
            long r0 = r0 - r1
            r12 = r0
            goto L_0x0016
        L_0x0054:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.internal.SdkDigestInputStream.skip(long):long");
    }
}
