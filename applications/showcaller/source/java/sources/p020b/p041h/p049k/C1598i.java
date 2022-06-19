package p020b.p041h.p049k;

import java.io.PrintWriter;
/* renamed from: b.h.k.i */
/* loaded from: classes-dex2jar.jar:b/h/k/i.class */
public final class C1598i {

    /* renamed from: a */
    private static final Object f6192a = new Object();

    /* renamed from: b */
    private static char[] f6193b = new char[24];

    /* renamed from: a */
    private static int m29657a(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (!z && i <= 0) {
            return 0;
        }
        return i2 + 1;
    }

    /* renamed from: b */
    public static void m29656b(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            m29654d(j - j2, printWriter, 0);
        }
    }

    /* renamed from: c */
    public static void m29655c(long j, PrintWriter printWriter) {
        m29654d(j, printWriter, 0);
    }

    /* renamed from: d */
    public static void m29654d(long j, PrintWriter printWriter, int i) {
        synchronized (f6192a) {
            printWriter.print(new String(f6193b, 0, m29653e(j, i)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: e */
    private static int m29653e(long j, int i) {
        int i2;
        char c;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (f6193b.length < i) {
            f6193b = new char[i];
        }
        char[] cArr = f6193b;
        int i8 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i8 == 0) {
            while (i - 1 > 0) {
                cArr[0] = (char) 32;
            }
            cArr[0] = (char) 48;
            return 1;
        }
        if (i8 > 0) {
            i2 = 43;
            c = j;
        } else {
            i2 = 45;
            c = -j;
        }
        int i9 = (int) (c % 1000);
        int floor = (int) Math.floor(c / 1000);
        if (floor > 86400) {
            i3 = floor / 86400;
            floor -= 86400 * i3;
        } else {
            i3 = 0;
        }
        if (floor > 3600) {
            i4 = floor / 3600;
            floor -= i4 * 3600;
        } else {
            i4 = 0;
        }
        if (floor > 60) {
            i6 = floor / 60;
            i5 = floor - (i6 * 60);
        } else {
            i6 = 0;
            i5 = floor;
        }
        if (i != 0) {
            int m29657a = m29657a(i3, 1, false, 0);
            int m29657a2 = m29657a + m29657a(i4, 1, m29657a > 0, 2);
            int m29657a3 = m29657a2 + m29657a(i6, 1, m29657a2 > 0, 2);
            int m29657a4 = m29657a3 + m29657a(i5, 1, m29657a3 > 0, 2);
            int m29657a5 = m29657a4 + m29657a(i9, 2, true, m29657a4 > 0 ? 3 : 0) + 1;
            int i10 = 0;
            while (true) {
                i7 = i10;
                if (m29657a5 >= i) {
                    break;
                }
                cArr[i10] = (char) 32;
                i10++;
                m29657a5++;
            }
        } else {
            i7 = 0;
        }
        cArr[i7] = (char) i2;
        int i11 = i7 + 1;
        boolean z = i != 0;
        int m29652f = m29652f(cArr, i3, 'd', i11, false, 0);
        int m29652f2 = m29652f(cArr, i4, 'h', m29652f, m29652f != i11, z ? 2 : 0);
        int m29652f3 = m29652f(cArr, i6, 'm', m29652f2, m29652f2 != i11, z ? 2 : 0);
        int m29652f4 = m29652f(cArr, i5, 's', m29652f3, m29652f3 != i11, z ? 2 : 0);
        int m29652f5 = m29652f(cArr, i9, 'm', m29652f4, true, (!z || m29652f4 == i11) ? 0 : 3);
        cArr[m29652f5] = (char) 115;
        return m29652f5 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
        if (r8 != r11) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
        if (r6 > 0) goto L6;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m29652f(char[] r5, int r6, char r7, int r8, boolean r9, int r10) {
        /*
            r0 = r9
            if (r0 != 0) goto Lc
            r0 = r8
            r11 = r0
            r0 = r6
            if (r0 <= 0) goto L95
        Lc:
            r0 = r9
            if (r0 == 0) goto L17
            r0 = r10
            r1 = 3
            if (r0 >= r1) goto L1d
        L17:
            r0 = r6
            r1 = 99
            if (r0 <= r1) goto L3d
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
            goto L40
        L3d:
            r0 = r8
            r11 = r0
        L40:
            r0 = r9
            if (r0 == 0) goto L4b
            r0 = r10
            r1 = 2
            if (r0 >= r1) goto L5e
        L4b:
            r0 = r6
            r1 = 9
            if (r0 > r1) goto L5e
            r0 = r11
            r12 = r0
            r0 = r6
            r10 = r0
            r0 = r8
            r1 = r11
            if (r0 == r1) goto L7b
        L5e:
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
        L7b:
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
        L95:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p020b.p041h.p049k.C1598i.m29652f(char[], int, char, int, boolean, int):int");
    }
}
