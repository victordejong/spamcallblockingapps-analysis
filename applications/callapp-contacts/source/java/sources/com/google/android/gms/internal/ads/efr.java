package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.PriorityQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/efr.class */
public final class efr {
    /* renamed from: a */
    private static long m15087a(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        return i == 1 ? j : i % 2 == 0 ? m15087a((j * j) % 1073807359, i / 2) % 1073807359 : (j * (m15087a((j * j) % 1073807359, i / 2) % 1073807359)) % 1073807359;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: a */
    private static long m15086a(String[] strArr, int i) {
        char m15092a = (efm.m15092a(strArr[0]) + 2147483647L) % 1073807359;
        for (int i2 = 1; i2 < i; i2++) {
            m15092a = (((m15092a * 8191) % 1073807359) + ((efm.m15092a(strArr[i2]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return m15092a;
    }

    /* renamed from: a */
    private static String m15085a(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzd.zzex("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i >= i4) {
                sb.append(strArr[i4]);
                return sb.toString();
            }
            sb.append(strArr[i]);
            sb.append(' ');
            i++;
        }
    }

    /* renamed from: a */
    private static void m15088a(int i, long j, String str, int i2, PriorityQueue<efq> priorityQueue) {
        efq efqVar = new efq(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().f48975c <= efqVar.f48975c && priorityQueue.peek().f48973a <= efqVar.f48973a)) && !priorityQueue.contains(efqVar)) {
            priorityQueue.add(efqVar);
            if (priorityQueue.size() <= i) {
                return;
            }
            priorityQueue.poll();
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public static void m15084a(String[] strArr, int i, int i2, PriorityQueue<efq> priorityQueue) {
        if (strArr.length < i2) {
            m15088a(i, m15086a(strArr, strArr.length), m15085a(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        char m15086a = m15086a(strArr, i2);
        m15088a(i, m15086a, m15085a(strArr, 0, i2), i2, priorityQueue);
        long m15087a = m15087a(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            m15086a = ((((((m15086a + 65535) - ((((efm.m15092a(strArr[i3 - 1]) + 2147483647L) % 1073807359) * m15087a) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((efm.m15092a(strArr[(i3 + i2) - 1]) + 2147483647L) % 1073807359)) % 1073807359;
            m15088a(i, m15086a, m15085a(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }
}
