package com.amazonaws.internal;

import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/SdkDigestInputStream.class */
public class SdkDigestInputStream extends DigestInputStream implements MetricAware {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f6640a = true;

    public SdkDigestInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, messageDigest);
    }

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean isMetricActivated() {
        if (this.in instanceof MetricAware) {
            return ((MetricAware) this.in).isMetricActivated();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
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
            r11 = r0
            r0 = r11
            byte[] r0 = new byte[r0]
            r12 = r0
            r0 = r9
            r13 = r0
        L_0x0019:
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            r15 = r0
            r0 = r15
            if (r0 <= 0) goto L_0x0056
            r0 = r8
            r1 = r12
            r2 = 0
            r3 = r13
            r4 = r11
            long r4 = (long) r4
            long r3 = java.lang.Math.min(r3, r4)
            int r3 = (int) r3
            int r0 = r0.read(r1, r2, r3)
            r15 = r0
            r0 = r15
            r1 = -1
            if (r0 != r1) goto L_0x004b
            r0 = r13
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0046
            r0 = -1
            return r0
        L_0x0046:
            r0 = r9
            r1 = r13
            long r0 = r0 - r1
            return r0
        L_0x004b:
            r0 = r13
            r1 = r15
            long r1 = (long) r1
            long r0 = r0 - r1
            r13 = r0
            goto L_0x0019
        L_0x0056:
            boolean r0 = com.amazonaws.internal.SdkDigestInputStream.f6640a
            if (r0 != 0) goto L_0x006c
            r0 = r15
            if (r0 != 0) goto L_0x0064
            goto L_0x006c
        L_0x0064:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r1 = r0
            r1.<init>()
            throw r0
        L_0x006c:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.internal.SdkDigestInputStream.skip(long):long");
    }
}
