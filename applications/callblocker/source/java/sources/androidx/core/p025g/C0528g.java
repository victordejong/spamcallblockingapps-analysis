package androidx.core.p025g;

import java.io.PrintWriter;
/* renamed from: androidx.core.g.g */
/* loaded from: classes-dex2jar.jar:androidx/core/g/g.class */
public final class C0528g {

    /* renamed from: a */
    private static final Object f1959a = new Object();

    /* renamed from: b */
    private static char[] f1960b = new char[24];

    /* renamed from: a */
    private static int m20641a(int i, int i2, boolean z, int i3) {
        return (i > 99 || (z && i3 >= 3)) ? i2 + 3 : (i > 9 || (z && i3 >= 2)) ? i2 + 2 : (z || i > 0) ? i2 + 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: a */
    private static int m20640a(long j, int i) {
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (f1960b.length < i) {
            f1960b = new char[i];
        }
        char[] cArr = f1960b;
        if (j == 0) {
            while (i - 1 < 0) {
                cArr[0] = (char) 32;
            }
            cArr[0] = (char) 48;
            i7 = 1;
        } else {
            if (j > 0) {
                i2 = 43;
                c = j;
            } else {
                c = -j;
                i2 = 45;
            }
            int i8 = (int) (c % 1000);
            int floor = (int) Math.floor(c / 1000);
            int i9 = 0;
            int i10 = floor;
            if (floor > 86400) {
                i9 = floor / 86400;
                i10 = floor - (86400 * i9);
            }
            if (i10 > 3600) {
                i3 = i10 / 3600;
                i10 -= i3 * 3600;
            } else {
                i3 = 0;
            }
            if (i10 > 60) {
                int i11 = i10 / 60;
                i4 = i11;
                i5 = i10 - (i11 * 60);
            } else {
                i4 = 0;
                i5 = i10;
            }
            if (i != 0) {
                int m20641a = m20641a(i9, 1, false, 0);
                int m20641a2 = m20641a + m20641a(i3, 1, m20641a > 0, 2);
                int m20641a3 = m20641a2 + m20641a(i4, 1, m20641a2 > 0, 2);
                int m20641a4 = m20641a3 + m20641a(i5, 1, m20641a3 > 0, 2);
                int m20641a5 = m20641a4 + m20641a(i8, 2, true, m20641a4 > 0 ? 3 : 0) + 1;
                int i12 = 0;
                while (true) {
                    i6 = i12;
                    if (m20641a5 >= i) {
                        break;
                    }
                    cArr[i12] = (char) 32;
                    i12++;
                    m20641a5++;
                }
            } else {
                i6 = 0;
            }
            cArr[i6] = (char) i2;
            int i13 = i6 + 1;
            boolean z = i != 0;
            int m20636a = m20636a(cArr, i9, 'd', i13, false, 0);
            int m20636a2 = m20636a(cArr, i3, 'h', m20636a, m20636a != i13, z ? 2 : 0);
            int m20636a3 = m20636a(cArr, i4, 'm', m20636a2, m20636a2 != i13, z ? 2 : 0);
            int m20636a4 = m20636a(cArr, i5, 's', m20636a3, m20636a3 != i13, z ? 2 : 0);
            int m20636a5 = m20636a(cArr, i8, 'm', m20636a4, true, (!z || m20636a4 == i13) ? 0 : 3);
            cArr[m20636a5] = (char) 115;
            i7 = m20636a5 + 1;
        }
        return i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
        if (r8 != r11) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
        if (r6 > 0) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m20636a(char[] r5, int r6, char r7, int r8, boolean r9, int r10) {
        /*
            r0 = r9
            if (r0 != 0) goto Lc
            r0 = r8
            r11 = r0
            r0 = r6
            if (r0 <= 0) goto L8f
        Lc:
            r0 = r9
            if (r0 == 0) goto L17
            r0 = r10
            r1 = 3
            if (r0 >= r1) goto L1d
        L17:
            r0 = r6
            r1 = 99
            if (r0 <= r1) goto L92
        L1d:
            r0 = r6
            r1 = 100
            int r0 = r0 / r1
            r12 = r0
            r0 = r5
            r1 = r8
            r2 = r12
            r3 = 48
            int r2 = r2 + r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
            r0 = r6
            r1 = r12
            r2 = 100
            int r1 = r1 * r2
            int r0 = r0 - r1
            r6 = r0
        L3a:
            r0 = r9
            if (r0 == 0) goto L45
            r0 = r10
            r1 = 2
            if (r0 >= r1) goto L58
        L45:
            r0 = r6
            r1 = 9
            if (r0 > r1) goto L58
            r0 = r11
            r12 = r0
            r0 = r6
            r10 = r0
            r0 = r8
            r1 = r11
            if (r0 == r1) goto L75
        L58:
            r0 = r6
            r1 = 10
            int r0 = r0 / r1
            r8 = r0
            r0 = r5
            r1 = r11
            r2 = r8
            r3 = 48
            int r2 = r2 + r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r11
            r1 = 1
            int r0 = r0 + r1
            r12 = r0
            r0 = r6
            r1 = r8
            r2 = 10
            int r1 = r1 * r2
            int r0 = r0 - r1
            r10 = r0
        L75:
            r0 = r5
            r1 = r12
            r2 = r10
            r3 = 48
            int r2 = r2 + r3
            char r2 = (char) r2
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r12
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            char r2 = (char) r2
            r0[r1] = r2
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r11 = r0
        L8f:
            r0 = r11
            return r0
        L92:
            r0 = r8
            r11 = r0
            goto L3a
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p025g.C0528g.m20636a(char[], int, char, int, boolean, int):int");
    }

    /* renamed from: a */
    public static void m20639a(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            m20637a(j - j2, printWriter, 0);
        }
    }

    /* renamed from: a */
    public static void m20638a(long j, PrintWriter printWriter) {
        m20637a(j, printWriter, 0);
    }

    /* renamed from: a */
    public static void m20637a(long j, PrintWriter printWriter, int i) {
        synchronized (f1959a) {
            printWriter.print(new String(f1960b, 0, m20640a(j, i)));
        }
    }
}
