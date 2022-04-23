package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.VisibleForTesting;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrv.class */
public final class zzrv {
    @VisibleForTesting
    /* renamed from: a */
    public static long m11485a(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        return i == 1 ? j : i % 2 == 0 ? m11485a((j * j) % 1073807359, i / 2) % 1073807359 : (j * (m11485a((j * j) % 1073807359, i / 2) % 1073807359)) % 1073807359;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static String m11484a(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzbbq.m15856b("Unable to construct shingle");
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

    @VisibleForTesting
    /* renamed from: a */
    public static void m11486a(int i, long j, String str, int i2, PriorityQueue<zzry> priorityQueue) {
        zzry zzryVar = new zzry(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().f28946c <= zzryVar.f28946c && priorityQueue.peek().f28944a <= zzryVar.f28944a)) && !priorityQueue.contains(zzryVar)) {
            priorityQueue.add(zzryVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    /* renamed from: a */
    public static void m11483a(String[] strArr, int i, int i2, PriorityQueue<zzry> priorityQueue) {
        if (strArr.length < i2) {
            m11486a(i, m11482b(strArr, 0, strArr.length), m11484a(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        long b = m11482b(strArr, 0, i2);
        m11486a(i, b, m11484a(strArr, 0, i2), i2, priorityQueue);
        long a = m11485a(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            b = ((((((b + 1073807359) - ((((zzru.m11488a(strArr[i3 - 1]) + 2147483647L) % 1073807359) * a) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((zzru.m11488a(strArr[(i3 + i2) - 1]) + 2147483647L) % 1073807359)) % 1073807359;
            m11486a(i, b, m11484a(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }

    /* renamed from: b */
    public static long m11482b(String[] strArr, int i, int i2) {
        long a = (zzru.m11488a(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            a = (((a * 16785407) % 1073807359) + ((zzru.m11488a(strArr[i3]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return a;
    }
}
