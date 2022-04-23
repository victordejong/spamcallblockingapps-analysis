package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fs.class */
public abstract class fs extends fd {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f29028b = Logger.getLogger(fs.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f29029c = ix.a();

    /* renamed from: a  reason: collision with root package name */
    ft f29030a;

    private fs() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ fs(fq fqVar) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int a(int i, ho hoVar, ia iaVar) {
        int f = f(i << 3);
        ey eyVar = (ey) hoVar;
        int k = eyVar.k();
        int i2 = k;
        if (k == -1) {
            i2 = iaVar.b(eyVar);
            eyVar.b(i2);
        }
        return f + f + i2;
    }

    public static int a(fm fmVar) {
        int a2 = fmVar.a();
        return f(a2) + a2;
    }

    public static int a(gx gxVar) {
        int a2 = gxVar.a();
        return f(a2) + a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(ho hoVar, ia iaVar) {
        ey eyVar = (ey) hoVar;
        int k = eyVar.k();
        int i = k;
        if (k == -1) {
            i = iaVar.b(eyVar);
            eyVar.b(i);
        }
        return f(i) + i;
    }

    public static int a(String str) {
        int i;
        try {
            i = jc.a(str);
        } catch (jb e) {
            i = str.getBytes(gt.f29065a).length;
        }
        return f(i) + i;
    }

    public static fs a(byte[] bArr) {
        return new fr(bArr, 0, bArr.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(long r5) {
        /*
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = 1
            return r0
        L_0x000c:
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0015
            r0 = 10
            return r0
        L_0x0015:
            r0 = -34359738368(0xfffffff800000000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002a
            r0 = r5
            r1 = 28
            long r0 = r0 >>> r1
            r5 = r0
            r0 = 6
            r7 = r0
            goto L_0x002c
        L_0x002a:
            r0 = 2
            r7 = r0
        L_0x002c:
            r0 = r7
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = -2097152(0xffffffffffe00000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r7
            r1 = 2
            int r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = 14
            long r0 = r0 >>> r1
            r9 = r0
        L_0x0045:
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = -16384(0xffffffffffffc000, double:NaN)
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0056
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x0056:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.fs.c(long):int");
    }

    public static int d(int i) {
        return f(i << 3);
    }

    public static int e(int i) {
        if (i >= 0) {
            return f(i);
        }
        return 10;
    }

    public static int f(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public abstract int a();

    public abstract void a(byte b2) throws IOException;

    public abstract void a(int i) throws IOException;

    public abstract void a(int i, int i2) throws IOException;

    public abstract void a(int i, long j) throws IOException;

    public abstract void a(int i, fm fmVar) throws IOException;

    public abstract void a(int i, String str) throws IOException;

    public abstract void a(int i, boolean z) throws IOException;

    public abstract void a(long j) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, jb jbVar) throws IOException {
        f29028b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) jbVar);
        byte[] bytes = str.getBytes(gt.f29065a);
        try {
            int length = bytes.length;
            b(length);
            b(bytes, length);
        } catch (zzgx e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgx(e2);
        }
    }

    public final void b() {
        if (a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public abstract void b(int i) throws IOException;

    public abstract void b(int i, int i2) throws IOException;

    public abstract void b(int i, long j) throws IOException;

    public abstract void b(long j) throws IOException;

    public abstract void b(byte[] bArr, int i) throws IOException;

    public abstract void c(int i) throws IOException;

    public abstract void c(int i, int i2) throws IOException;

    public abstract void d(int i, int i2) throws IOException;
}
