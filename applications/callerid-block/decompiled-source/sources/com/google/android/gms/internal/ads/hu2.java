package com.google.android.gms.internal.ads;

import java.util.PriorityQueue;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hu2.class */
public final class hu2 {
    /* renamed from: a */
    public static void m7221a(String[] strArr, int i, int i2, PriorityQueue<gu2> priorityQueue) {
        int length = strArr.length;
        if (length < 6) {
            m7220b(i, m7217e(strArr, 0, length), m7219c(strArr, 0, length), length, priorityQueue);
            return;
        }
        long e = m7217e(strArr, 0, 6);
        m7220b(i, e, m7219c(strArr, 0, 6), 6, priorityQueue);
        long d = m7218d(16785407L, 5);
        int i3 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i3 < length2 - 5) {
                e = ((((((e + 1073807359) - ((((du2.m7683a(strArr[i3 - 1]) + 2147483647L) % 1073807359) * d) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((du2.m7683a(strArr[i3 + 5]) + 2147483647L) % 1073807359)) % 1073807359;
                m7220b(i, e, m7219c(strArr, i3, 6), length2, priorityQueue);
                i3++;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    static void m7220b(int i, long j, String str, int i2, PriorityQueue<gu2> priorityQueue) {
        gu2 gu2Var = new gu2(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().f6724c <= gu2Var.f6724c && priorityQueue.peek().f6722a <= gu2Var.f6722a)) && !priorityQueue.contains(gu2Var)) {
            priorityQueue.add(gu2Var);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    /* renamed from: c */
    static String m7219c(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            C1894po.m6183c("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i < i4) {
                sb.append(strArr[i]);
                sb.append(' ');
                i++;
            } else {
                sb.append(strArr[i4]);
                return sb.toString();
            }
        }
    }

    /* renamed from: d */
    static long m7218d(long j, int i) {
        if (i == 1) {
            return j;
        }
        return ((i & 1) == 0 ? m7218d((j * j) % 1073807359, i >> 1) : j * (m7218d((j * j) % 1073807359, i >> 1) % 1073807359)) % 1073807359;
    }

    /* renamed from: e */
    private static long m7217e(String[] strArr, int i, int i2) {
        long a = (du2.m7683a(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            a = (((a * 16785407) % 1073807359) + ((du2.m7683a(strArr[i3]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return a;
    }
}
