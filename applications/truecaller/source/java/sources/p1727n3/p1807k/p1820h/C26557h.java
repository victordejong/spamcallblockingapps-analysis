package p1727n3.p1807k.p1820h;

import com.huawei.hms.push.constant.RemoteMessageConst;
import java.io.PrintWriter;
/* renamed from: n3.k.h.h */
/* loaded from: classes-dex2jar.jar:n3/k/h/h.class */
public final class C26557h {

    /* renamed from: a */
    public static final Object f74408a = new Object();

    /* renamed from: b */
    public static char[] f74409b = new char[24];

    /* renamed from: a */
    public static int m1687a(int i, int i2, boolean z, int i3) {
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
    public static void m1686b(long j, PrintWriter printWriter, int i) {
        synchronized (f74408a) {
            printWriter.print(new String(f74409b, 0, m1685c(j, i)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: c */
    public static int m1685c(long j, int i) {
        int i2;
        char c;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (f74409b.length < i) {
            f74409b = new char[i];
        }
        char[] cArr = f74409b;
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
            i3 = floor / RemoteMessageConst.DEFAULT_TTL;
            floor -= RemoteMessageConst.DEFAULT_TTL * i3;
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
            int m1687a = m1687a(i3, 1, false, 0);
            int m1687a2 = m1687a(i4, 1, m1687a > 0, 2) + m1687a;
            int m1687a3 = m1687a(i6, 1, m1687a2 > 0, 2) + m1687a2;
            int m1687a4 = m1687a(i5, 1, m1687a3 > 0, 2) + m1687a3;
            int m1687a5 = m1687a(i9, 2, true, m1687a4 > 0 ? 3 : 0) + 1 + m1687a4;
            int i10 = 0;
            while (true) {
                i7 = i10;
                if (m1687a5 >= i) {
                    break;
                }
                cArr[i10] = (char) 32;
                i10++;
                m1687a5++;
            }
        } else {
            i7 = 0;
        }
        cArr[i7] = (char) i2;
        int i11 = i7 + 1;
        boolean z = i != 0;
        int m1684d = m1684d(cArr, i3, 'd', i11, false, 0);
        int m1684d2 = m1684d(cArr, i4, 'h', m1684d, m1684d != i11, z ? 2 : 0);
        int m1684d3 = m1684d(cArr, i6, 'm', m1684d2, m1684d2 != i11, z ? 2 : 0);
        int m1684d4 = m1684d(cArr, i5, 's', m1684d3, m1684d3 != i11, z ? 2 : 0);
        int m1684d5 = m1684d(cArr, i9, 'm', m1684d4, true, (!z || m1684d4 == i11) ? 0 : 3);
        cArr[m1684d5] = (char) 115;
        return m1684d5 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
        if (r8 != r11) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
        if (r6 > 0) goto L6;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m1684d(char[] r5, int r6, char r7, int r8, boolean r9, int r10) {
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
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1820h.C26557h.m1684d(char[], int, char, int, boolean, int):int");
    }
}
