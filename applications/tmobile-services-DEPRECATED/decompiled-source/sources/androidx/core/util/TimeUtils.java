package androidx.core.util;

import androidx.annotation.RestrictTo;
import java.io.PrintWriter;
import org.apache.commons.cli.HelpFormatter;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/util/TimeUtils.class */
public final class TimeUtils {

    /* renamed from: a */
    private static final Object f3217a = new Object();

    /* renamed from: b */
    private static char[] f3218b = new char[24];

    private TimeUtils() {
    }

    /* renamed from: a */
    private static int m19335a(int i, int i2, boolean z, int i3) {
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    @RestrictTo
    /* renamed from: b */
    public static void m19334b(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print(HelpFormatter.DEFAULT_LONG_OPT_PREFIX);
        } else {
            m19332d(j - j2, printWriter, 0);
        }
    }

    @RestrictTo
    /* renamed from: c */
    public static void m19333c(long j, PrintWriter printWriter) {
        m19332d(j, printWriter, 0);
    }

    @RestrictTo
    /* renamed from: d */
    public static void m19332d(long j, PrintWriter printWriter, int i) {
        synchronized (f3217a) {
            printWriter.print(new String(f3218b, 0, m19331e(j, i)));
        }
    }

    /* renamed from: e */
    private static int m19331e(long j, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (f3218b.length < i) {
            f3218b = new char[i];
        }
        char[] cArr = f3218b;
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
        } else {
            i2 = 45;
            j = -j;
        }
        int i9 = (int) (j % 1000);
        int floor = (int) Math.floor(j / 1000);
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
            int a = m19335a(i3, 1, false, 0);
            int a2 = a + m19335a(i4, 1, a > 0, 2);
            int a3 = a2 + m19335a(i6, 1, a2 > 0, 2);
            int a4 = a3 + m19335a(i5, 1, a3 > 0, 2);
            int a5 = a4 + m19335a(i9, 2, true, a4 > 0 ? 3 : 0) + 1;
            int i10 = 0;
            while (true) {
                i7 = i10;
                if (a5 >= i) {
                    break;
                }
                cArr[i10] = (char) 32;
                i10++;
                a5++;
            }
        } else {
            i7 = 0;
        }
        cArr[i7] = (char) i2;
        int i11 = i7 + 1;
        boolean z = i != 0;
        int f = m19330f(cArr, i3, 'd', i11, false, 0);
        int f2 = m19330f(cArr, i4, 'h', f, f != i11, z ? 2 : 0);
        int f3 = m19330f(cArr, i6, 'm', f2, f2 != i11, z ? 2 : 0);
        int f4 = m19330f(cArr, i5, 's', f3, f3 != i11, z ? 2 : 0);
        int f5 = m19330f(cArr, i9, 'm', f4, true, (!z || f4 == i11) ? 0 : 3);
        cArr[f5] = (char) 115;
        return f5 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
        if (r8 != r11) goto L_0x005e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
        if (r6 > 0) goto L_0x000c;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m19330f(char[] r5, int r6, char r7, int r8, boolean r9, int r10) {
        /*
            r0 = r9
            if (r0 != 0) goto L_0x000c
            r0 = r8
            r11 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x0095
        L_0x000c:
            r0 = r9
            if (r0 == 0) goto L_0x0017
            r0 = r10
            r1 = 3
            if (r0 >= r1) goto L_0x001d
        L_0x0017:
            r0 = r6
            r1 = 99
            if (r0 <= r1) goto L_0x003d
        L_0x001d:
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
            goto L_0x0040
        L_0x003d:
            r0 = r8
            r11 = r0
        L_0x0040:
            r0 = r9
            if (r0 == 0) goto L_0x004b
            r0 = r10
            r1 = 2
            if (r0 >= r1) goto L_0x005e
        L_0x004b:
            r0 = r6
            r1 = 9
            if (r0 > r1) goto L_0x005e
            r0 = r11
            r12 = r0
            r0 = r6
            r10 = r0
            r0 = r8
            r1 = r11
            if (r0 == r1) goto L_0x007b
        L_0x005e:
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
        L_0x007b:
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
        L_0x0095:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.util.TimeUtils.m19330f(char[], int, char, int, boolean, int):int");
    }
}
