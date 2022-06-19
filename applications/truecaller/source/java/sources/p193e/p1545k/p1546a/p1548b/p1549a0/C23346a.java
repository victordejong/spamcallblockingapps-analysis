package p193e.p1545k.p1546a.p1548b.p1549a0;

import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* renamed from: e.k.a.b.a0.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/a0/a.class */
public class C23346a {

    /* renamed from: c */
    public static final int[] f64561c = {JosStatusCodes.RTN_CODE_COMMON_ERROR, JosStatusCodes.RTN_CODE_COMMON_ERROR, 2000, 2000};

    /* renamed from: d */
    public static final int[] f64562d = {4000, 4000, 200, 200};

    /* renamed from: a */
    public final AtomicReferenceArray<byte[]> f64563a = new AtomicReferenceArray<>(4);

    /* renamed from: b */
    public final AtomicReferenceArray<char[]> f64564b = new AtomicReferenceArray<>(4);

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
        if (r0.length < r6) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m7254a(int r5) {
        /*
            r4 = this;
            int[] r0 = p193e.p1545k.p1546a.p1548b.p1549a0.C23346a.f64561c
            r1 = r5
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            if (r0 <= 0) goto Ld
            goto Lf
        Ld:
            r0 = 0
            r6 = r0
        Lf:
            r0 = r4
            java.util.concurrent.atomic.AtomicReferenceArray<byte[]> r0 = r0.f64563a
            r1 = r5
            r2 = 0
            java.lang.Object r0 = r0.getAndSet(r1, r2)
            byte[] r0 = (byte[]) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L29
            r0 = r7
            r8 = r0
            r0 = r7
            int r0 = r0.length
            r1 = r6
            if (r0 >= r1) goto L2e
        L29:
            r0 = r6
            byte[] r0 = new byte[r0]
            r8 = r0
        L2e:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1549a0.C23346a.m7254a(int):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002d, code lost:
        if (r0.length < r8) goto L9;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public char[] m7253b(int r5, int r6) {
        /*
            r4 = this;
            int[] r0 = p193e.p1545k.p1546a.p1548b.p1549a0.C23346a.f64562d
            r1 = r5
            r0 = r0[r1]
            r7 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = r7
            if (r0 >= r1) goto L11
            r0 = r7
            r8 = r0
        L11:
            r0 = r4
            java.util.concurrent.atomic.AtomicReferenceArray<char[]> r0 = r0.f64564b
            r1 = r5
            r2 = 0
            java.lang.Object r0 = r0.getAndSet(r1, r2)
            char[] r0 = (char[]) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L30
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r8
            if (r0 >= r1) goto L36
        L30:
            r0 = r8
            char[] r0 = new char[r0]
            r10 = r0
        L36:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1549a0.C23346a.m7253b(int, int):char[]");
    }
}
