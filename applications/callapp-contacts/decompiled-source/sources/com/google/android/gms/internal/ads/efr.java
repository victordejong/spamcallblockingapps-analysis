package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.PriorityQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efr.class */
public final class efr {
    private static long a(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        return i == 1 ? j : i % 2 == 0 ? a((j * j) % 1073807359, i / 2) % 1073807359 : (j * (a((j * j) % 1073807359, i / 2) % 1073807359)) % 1073807359;
    }

    private static long a(String[] strArr, int i) {
        long a2 = (efm.a(strArr[0]) + 2147483647L) % 1073807359;
        for (int i2 = 1; i2 < i; i2++) {
            a2 = (((a2 * 16785407) % 1073807359) + ((efm.a(strArr[i2]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return a2;
    }

    private static String a(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzd.zzex("Unable to construct shingle");
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

    private static void a(int i, long j, String str, int i2, PriorityQueue<efq> priorityQueue) {
        efq efqVar = new efq(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().f27794c <= efqVar.f27794c && priorityQueue.peek().f27792a <= efqVar.f27792a)) && !priorityQueue.contains(efqVar)) {
            priorityQueue.add(efqVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static void a(String[] strArr, int i, int i2, PriorityQueue<efq> priorityQueue) {
        if (strArr.length < i2) {
            a(i, a(strArr, strArr.length), a(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        long a2 = a(strArr, i2);
        a(i, a2, a(strArr, 0, i2), i2, priorityQueue);
        long a3 = a(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            a2 = ((((((a2 + 1073807359) - ((((efm.a(strArr[i3 - 1]) + 2147483647L) % 1073807359) * a3) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((efm.a(strArr[(i3 + i2) - 1]) + 2147483647L) % 1073807359)) % 1073807359;
            a(i, a2, a(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }
}
